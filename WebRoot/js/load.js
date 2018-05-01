var xmlns = "http://www.w3.org/2000/svg",
  xlinkns = "http://www.w3.org/1999/xlink",
  select = function(s) {
    return document.querySelector(s);
  },
  selectAll = function(s) {
    return document.querySelectorAll(s);
  },
    elementsToDraw = [ '.lead', '.tipBot','.tipTop', '.pencilOutline', '.ridge'],
    pencil = select('.pencil'),
    drawing = select('.drawing')
  

TweenMax.set('svg', {
  visibility: 'visible'
})

TweenMax.set([pencil ], {
 rotation:-23,
 transformOrigin:'0% 100%'
})



MorphSVGPlugin.convertToPath('polyline, line, polygon');


function createDrawing(obj){
 
 var mainTl, tl, target, targetPath, targetBezier, drawDuration, nodeList = false, delay = (obj.delay) ? obj.delay : 0, repeat = (obj.repeat) ? obj.repeat : 0;
 
 mainTl = new TimelineMax({onUpdate:(obj.onUpdate) ? obj.onUpdate : null, repeat:repeat, repeatDelay:0, delay:delay});
 //decide if nodelist or array has been passed in
 if(typeof obj.list[0] == 'object'){
   nodeList = true;
 }
 TweenMax.set(obj.follower, {
  x:249.7,
  y:177.39
 })   
 
 
  for(var i = 0; i < obj.list.length; i++){
   
   tl = new TimelineMax();
   target = (nodeList) ? obj.list[i] : select(obj.list[i]);
   targetPath = target.getAttribute('d');
   targetBezier =  MorphSVGPlugin.pathDataToBezier(targetPath, {
       offsetX: obj.offsetX,
       offsetY: obj.offsetY
       })

  
   drawDuration = Math.round(target.getTotalLength())/150;

   
   tl.to(obj.follower, 0.5,{
    x:targetBezier[0].x,
    y:targetBezier[0].y,
    ease:Elastic.easeOut.config(0.61, 0.8)
   })
    .from(target, drawDuration, {
    drawSVG:'0% 0%',
    ease:Linear.easeNone
   })
   .to(obj.follower, drawDuration, {
    bezier: {
      type: "cubic",
      values:targetBezier,
      autoRotate: false
    },
    ease: Linear.easeNone
  },'-=' + drawDuration)

   

 mainTl.add(tl).timeScale(obj.timeScale);
   
  }
   mainTl.to(obj.follower, 0.5, {
    y:800,
    x:600,
    ease:Back.easeIn.config(0.82)
   })
    .from('.pencilFills', 0.6, {
    fillOpacity:0,
    ease:Sine.easeOut
   })
  .to('.pencilOutlines', 0.2, {
    alpha:0,
    ease:Sine.easeIn
   },'-=0.6')
 .to('.shadow', 0.2, {
    alpha:0,
    ease:Sine.easeIn
   },'-=0.6')
.set('.shadow',  {
    alpha:0.051
   },'-='+ mainTl.duration()) 
    
 
 return mainTl;
 
}

function updateShadow(){
 TweenMax.set('.shadow', {
  x:pencil._gsTransform.x,
  y:pencil._gsTransform.y
 })  
}

var drawingTl = createDrawing({list:elementsToDraw, follower:pencil, offsetX:-1, offsetY:-219, timeScale:1, repeat:-1, onUpdate:updateShadow});

drawingTl.to(drawing, 1.18, {
 rotation:-23,
 transformOrigin:'0% 100%',
 ease:Elastic.easeOut.config(0.9, 0.86)
},'-=0')
.to('.shadowEnd', 1.18, {
 skewX:0,
 alpha:0.05,
 ease:Elastic.easeOut.config(0.9, 0.86)
},'-=1.18')


TweenMax.set('.shadowEnd', {
   x:249.7,
  y:177.39,
 skewX:-43,
 transformOrigin:'0% 100%'
 
})


TweenMax.globalTimeScale(1.2)
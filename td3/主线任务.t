function 领取礼包()
    if(checkgetstate("check0"))
        var x,y
        dm.FindColor(196,508,550,665,"3d8f0b-111111",0.95,0,x,y)
        if(x>0)
            dm.MoveTo(x,y)
            traceprint("x"&x)
            sleep(100)
            dm.LeftClick()
        else
            traceprint("没有找到登录按钮")            
        end
    end    
    
    
end

function 领取礼包1()
    var x,y,index = 0
    if(checkgetstate("check0"))
        for(var i = 0; i < 4; i++)
            dm.FindPic(305,66,942,292,"领取1.bmp","050505",0.95,0,x,y)
             traceprint("x"&x)
            if(x>0)
                dm.MoveTo(x,y)
                sleep(100)
                dm.LeftClick()
                index++
            else
                traceprint("已经找完领取")
                //break                
            end
        end
        
    end    
    return index
    
end
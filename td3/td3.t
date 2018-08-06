var dm,线程ID,hwnd
//开始按钮_点击操作
function start_click()
    
end

//退出按钮_点击操作
function exit_click()
    
    exit()
end

function td3_init()
    //这里添加你要执行的代码
    registerDm()
end

function registerDm()
    var version
    if(regdll(getrcpath("rc:dm.dll"),true))
        
        
        traceprint("注册大漠插件成功")
        dm = com("dm.dmsoft")
        version =  dm.Ver()
        traceprint("当前大漠插件版本" & version)
    else
        traceprint("大漠插件注册失败")
    end
end




function startGamehotKey_onhotkey()
    //这里添加你要执行的代码
    
    hwnd = dm.GetForegroundWindow()
    traceprint("hwnd"&hwnd)
    if(hwnd >0)
        //主窗口绑定
        mainWindowBinding(hwnd)           
    end
    
end

function mainWindowBinding(jb)
    var dm_ret = dm.BindWindow(hwnd,"normal","normal","normal",0)
    dm.SetPath(getrcpath("rc:"))
    traceprint("???????")
    if(dm_ret == 1 )
        traceprint("绑定成功")
        线程ID = threadbegin("startGame","")
    else
        traceprint("绑定失败")
    end
end

function startGame()
    traceprint("????")
    领取礼包1()
end



function endGamehotKey_onhotkey()
    if(dm.UnBindWindow() == 1)
        traceprint("窗口解绑成功")
    end
    threadclose(hwnd)
end

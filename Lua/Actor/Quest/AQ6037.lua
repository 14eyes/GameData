require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6037 = class("Quest6037", QuestActorProxy)
Quest6037.defaultAlias = "Quest6037"
local clientData
local this
local mainID
local actorAlias

function Quest6037:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest6037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["603701"] = self.OnSubStart603701,
        ["603702"] = self.OnSubStart603702,
        ["603703"] = self.OnSubStart603703,
        ["603704"] = self.OnSubStart603704,
        ["603705"] = self.OnSubStart603705,
        ["603706"] = self.OnSubStart603706,
        ["603707"] = self.OnSubStart603707,
        ["603708"] = self.OnSubStart603708,
        ["603709"] = self.OnSubStart603709,
        ["603710"] = self.OnSubStart603710,
        ["603711"] = self.OnSubStart603711,
        ["603712"] = self.OnSubStart603712,
        ["603713"] = self.OnSubStart603713,
        ["603714"] = self.OnSubStart603714,
        ["603715"] = self.OnSubStart603715,
        ["603716"] = self.OnSubStart603716,
        ["603717"] = self.OnSubStart603717,
        ["603718"] = self.OnSubStart603718,
        ["603719"] = self.OnSubStart603719,
        ["603720"] = self.OnSubStart603720,
        ["603733"] = self.OnSubStart603733,
        ["603734"] = self.OnSubStart603734,
        ["603721"] = self.OnSubStart603721,
        ["603722"] = self.OnSubStart603722,
        ["603723"] = self.OnSubStart603723,
        ["603724"] = self.OnSubStart603724,
        ["603725"] = self.OnSubStart603725,
        ["603726"] = self.OnSubStart603726,
        ["603727"] = self.OnSubStart603727,
        ["603728"] = self.OnSubStart603728,
        ["603735"] = self.OnSubStart603735,
        ["603729"] = self.OnSubStart603729,
        ["603730"] = self.OnSubStart603730,
        ["603731"] = self.OnSubStart603731,
        ["603732"] = self.OnSubStart603732
    }
end

function Quest6037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["603701"] = self.OnSubFinish603701,
        ["603702"] = self.OnSubFinish603702,
        ["603703"] = self.OnSubFinish603703,
        ["603704"] = self.OnSubFinish603704,
        ["603705"] = self.OnSubFinish603705,
        ["603706"] = self.OnSubFinish603706,
        ["603707"] = self.OnSubFinish603707,
        ["603708"] = self.OnSubFinish603708,
        ["603709"] = self.OnSubFinish603709,
        ["603710"] = self.OnSubFinish603710,
        ["603711"] = self.OnSubFinish603711,
        ["603712"] = self.OnSubFinish603712,
        ["603713"] = self.OnSubFinish603713,
        ["603714"] = self.OnSubFinish603714,
        ["603715"] = self.OnSubFinish603715,
        ["603716"] = self.OnSubFinish603716,
        ["603717"] = self.OnSubFinish603717,
        ["603718"] = self.OnSubFinish603718,
        ["603719"] = self.OnSubFinish603719,
        ["603720"] = self.OnSubFinish603720,
        ["603733"] = self.OnSubFinish603733,
        ["603734"] = self.OnSubFinish603734,
        ["603721"] = self.OnSubFinish603721,
        ["603722"] = self.OnSubFinish603722,
        ["603723"] = self.OnSubFinish603723,
        ["603724"] = self.OnSubFinish603724,
        ["603725"] = self.OnSubFinish603725,
        ["603726"] = self.OnSubFinish603726,
        ["603727"] = self.OnSubFinish603727,
        ["603728"] = self.OnSubFinish603728,
        ["603735"] = self.OnSubFinish603735,
        ["603729"] = self.OnSubFinish603729,
        ["603730"] = self.OnSubFinish603730,
        ["603731"] = self.OnSubFinish603731,
        ["603732"] = self.OnSubFinish603732
    }
end

function Quest6037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["603702"] = self.OnSubFailed603702,
        ["603704"] = self.OnSubFailed603704,
        ["603706"] = self.OnSubFailed603706,
        ["603708"] = self.OnSubFailed603708,
        ["603710"] = self.OnSubFailed603710,
        ["603712"] = self.OnSubFailed603712,
        ["603714"] = self.OnSubFailed603714,
        ["603716"] = self.OnSubFailed603716,
        ["603718"] = self.OnSubFailed603718,
        ["603720"] = self.OnSubFailed603720,
        ["603734"] = self.OnSubFailed603734,
        ["603722"] = self.OnSubFailed603722,
        ["603724"] = self.OnSubFailed603724,
        ["603726"] = self.OnSubFailed603726,
        ["603728"] = self.OnSubFailed603728,
        ["603730"] = self.OnSubFailed603730,
        ["603732"] = self.OnSubFailed603732
    }
end

function Quest6037:Start()
    print("Start")
end

function Quest6037:OnDestroy()
    print("OnDestroy")
end

function Quest6037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6037:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest6037:OnSubStart603701(arg1)
    print("OnSubStart603701")
end

function Quest6037:OnSubFinish603701(arg1)
    print("OnSubFinish603701")
end

function Quest6037:OnSubStart603702(arg1)
    print("OnSubStart603702")
end

function Quest6037:OnSubFinish603702(arg1)
    print("OnSubFinish603702")
end

function Quest6037:OnSubFailed603702(arg1)
    print("OnSubFailed603702")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603703(arg1)
    print("OnSubStart603703")
end

function Quest6037:OnSubFinish603703(arg1)
    print("OnSubFinish603703")
end

function Quest6037:OnSubStart603704(arg1)
    print("OnSubStart603704")
end

function Quest6037:OnSubFinish603704(arg1)
    print("OnSubFinish603704")
end

function Quest6037:OnSubFailed603704(arg1)
    print("OnSubFailed603704")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603705(arg1)
    print("OnSubStart603705")
end

function Quest6037:OnSubFinish603705(arg1)
    print("OnSubFinish603705")
end

function Quest6037:OnSubStart603706(arg1)
    print("OnSubStart603706")
end

function Quest6037:OnSubFinish603706(arg1)
    print("OnSubFinish603706")
end

function Quest6037:OnSubFailed603706(arg1)
    print("OnSubFailed603706")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603707(arg1)
    print("OnSubStart603707")
end

function Quest6037:OnSubFinish603707(arg1)
    print("OnSubFinish603707")
end

function Quest6037:OnSubStart603708(arg1)
    print("OnSubStart603708")
end

function Quest6037:OnSubFinish603708(arg1)
    print("OnSubFinish603708")
end

function Quest6037:OnSubFailed603708(arg1)
    print("OnSubFailed603708")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603709(arg1)
    print("OnSubStart603709")
end

function Quest6037:OnSubFinish603709(arg1)
    print("OnSubFinish603709")
end

function Quest6037:OnSubStart603710(arg1)
    print("OnSubStart603710")
end

function Quest6037:OnSubFinish603710(arg1)
    print("OnSubFinish603710")
end

function Quest6037:OnSubFailed603710(arg1)
    print("OnSubFailed603710")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603711(arg1)
    print("OnSubStart603711")
end

function Quest6037:OnSubFinish603711(arg1)
    print("OnSubFinish603711")
end

function Quest6037:OnSubStart603712(arg1)
    print("OnSubStart603712")
end

function Quest6037:OnSubFinish603712(arg1)
    print("OnSubFinish603712")
end

function Quest6037:OnSubFailed603712(arg1)
    print("OnSubFailed603712")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603713(arg1)
    print("OnSubStart603713")
end

function Quest6037:OnSubFinish603713(arg1)
    print("OnSubFinish603713")
end

function Quest6037:OnSubStart603714(arg1)
    print("OnSubStart603714")
end

function Quest6037:OnSubFinish603714(arg1)
    print("OnSubFinish603714")
end

function Quest6037:OnSubFailed603714(arg1)
    print("OnSubFailed603714")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603715(arg1)
    print("OnSubStart603715")
end

function Quest6037:OnSubFinish603715(arg1)
    print("OnSubFinish603715")
end

function Quest6037:OnSubStart603716(arg1)
    print("OnSubStart603716")
end

function Quest6037:OnSubFinish603716(arg1)
    print("OnSubFinish603716")
end

function Quest6037:OnSubFailed603716(arg1)
    print("OnSubFailed603716")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603717(arg1)
    print("OnSubStart603717")
end

function Quest6037:OnSubFinish603717(arg1)
    print("OnSubFinish603717")
end

function Quest6037:OnSubStart603718(arg1)
    print("OnSubStart603718")
end

function Quest6037:OnSubFinish603718(arg1)
    print("OnSubFinish603718")
end

function Quest6037:OnSubFailed603718(arg1)
    print("OnSubFailed603718")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603719(arg1)
    print("OnSubStart603719")
end

function Quest6037:OnSubFinish603719(arg1)
    print("OnSubFinish603719")
end

function Quest6037:OnSubStart603720(arg1)
    print("OnSubStart603720")
end

function Quest6037:OnSubFinish603720(arg1)
    print("OnSubFinish603720")
end

function Quest6037:OnSubFailed603720(arg1)
    print("OnSubFailed603720")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603733(arg1)
    print("OnSubStart603733")
end

function Quest6037:OnSubFinish603733(arg1)
    print("OnSubFinish603733")
end

function Quest6037:OnSubStart603734(arg1)
    print("OnSubStart603734")
end

function Quest6037:OnSubFinish603734(arg1)
    print("OnSubFinish603734")
end

function Quest6037:OnSubFailed603734(arg1)
    print("OnSubFailed603734")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603721(arg1)
    print("OnSubStart603721")
end

function Quest6037:OnSubFinish603721(arg1)
    print("OnSubFinish603721")
end

function Quest6037:OnSubStart603722(arg1)
    print("OnSubStart603722")
end

function Quest6037:OnSubFinish603722(arg1)
    print("OnSubFinish603722")
end

function Quest6037:OnSubFailed603722(arg1)
    print("OnSubFailed603722")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603723(arg1)
    print("OnSubStart603723")
end

function Quest6037:OnSubFinish603723(arg1)
    print("OnSubFinish603723")
end

function Quest6037:OnSubStart603724(arg1)
    print("OnSubStart603724")
end

function Quest6037:OnSubFinish603724(arg1)
    print("OnSubFinish603724")
end

function Quest6037:OnSubFailed603724(arg1)
    print("OnSubFailed603724")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603725(arg1)
    print("OnSubStart603725")
end

function Quest6037:OnSubFinish603725(arg1)
    print("OnSubFinish603725")
end

function Quest6037:OnSubStart603726(arg1)
    print("OnSubStart603726")
end

function Quest6037:OnSubFinish603726(arg1)
    print("OnSubFinish603726")
end

function Quest6037:OnSubFailed603726(arg1)
    print("OnSubFailed603726")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603727(arg1)
    print("OnSubStart603727")
end

function Quest6037:OnSubFinish603727(arg1)
    print("OnSubFinish603727")
end

function Quest6037:OnSubStart603728(arg1)
    print("OnSubStart603728")
end

function Quest6037:OnSubFinish603728(arg1)
    print("OnSubFinish603728")
end

function Quest6037:OnSubFailed603728(arg1)
    print("OnSubFailed603728")
    this:RecycleAllRes()
end

function Quest6037:OnSubStart603735(arg1)
    print("OnSubStart603735")
end

function Quest6037:OnSubFinish603735(arg1)
    print("OnSubFinish603735")
end

function Quest6037:OnSubStart603729(arg1)
    print("OnSubStart603729")
end

function Quest6037:OnSubFinish603729(arg1)
    print("OnSubFinish603729")
end

function Quest6037:OnSubStart603730(arg1)
    print("OnSubStart603730")
end

function Quest6037:OnSubFinish603730(arg1)
    print("OnSubFinish603730")
end

function Quest6037:OnSubFailed603730(arg1)
    print("OnSubFailed603730")
    this:RecycleAllRes()
    this:ClearNarratorTask()
end

function Quest6037:OnSubStart603731(arg1)
    print("OnSubStart603731")
end

function Quest6037:OnSubFinish603731(arg1)
    print("OnSubFinish603731")
end

function Quest6037:OnSubStart603732(arg1)
    print("OnSubStart603732")
end

function Quest6037:OnSubFinish603732(arg1)
    print("OnSubFinish603732")
end

function Quest6037:OnSubFailed603732(arg1)
    print("OnSubFailed603732")
    this:RecycleAllRes()
end

return Quest6037

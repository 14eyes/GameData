require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3038 = class("Quest3038", QuestActorProxy)
Quest3038.defaultAlias = "Quest3038"
local clientData
local this
local mainID
local actorAlias

function Quest3038:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest3038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["303801"] = self.OnSubStart303801,
        ["303802"] = self.OnSubStart303802,
        ["303803"] = self.OnSubStart303803,
        ["303804"] = self.OnSubStart303804,
        ["303805"] = self.OnSubStart303805,
        ["303806"] = self.OnSubStart303806,
        ["303807"] = self.OnSubStart303807,
        ["303808"] = self.OnSubStart303808,
        ["303809"] = self.OnSubStart303809,
        ["303810"] = self.OnSubStart303810,
        ["303811"] = self.OnSubStart303811,
        ["303812"] = self.OnSubStart303812,
        ["303813"] = self.OnSubStart303813,
        ["303814"] = self.OnSubStart303814,
        ["303815"] = self.OnSubStart303815,
        ["303816"] = self.OnSubStart303816,
        ["303817"] = self.OnSubStart303817
    }
end

function Quest3038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["303801"] = self.OnSubFinish303801,
        ["303802"] = self.OnSubFinish303802,
        ["303803"] = self.OnSubFinish303803,
        ["303804"] = self.OnSubFinish303804,
        ["303805"] = self.OnSubFinish303805,
        ["303806"] = self.OnSubFinish303806,
        ["303807"] = self.OnSubFinish303807,
        ["303808"] = self.OnSubFinish303808,
        ["303809"] = self.OnSubFinish303809,
        ["303810"] = self.OnSubFinish303810,
        ["303811"] = self.OnSubFinish303811,
        ["303812"] = self.OnSubFinish303812,
        ["303813"] = self.OnSubFinish303813,
        ["303814"] = self.OnSubFinish303814,
        ["303815"] = self.OnSubFinish303815,
        ["303816"] = self.OnSubFinish303816,
        ["303817"] = self.OnSubFinish303817
    }
end

function Quest3038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["303802"] = self.OnSubFailed303802,
        ["303805"] = self.OnSubFailed303805,
        ["303806"] = self.OnSubFailed303806,
        ["303807"] = self.OnSubFailed303807,
        ["303808"] = self.OnSubFailed303808,
        ["303809"] = self.OnSubFailed303809,
        ["303810"] = self.OnSubFailed303810,
        ["303811"] = self.OnSubFailed303811,
        ["303812"] = self.OnSubFailed303812,
        ["303813"] = self.OnSubFailed303813,
        ["303814"] = self.OnSubFailed303814,
        ["303815"] = self.OnSubFailed303815,
        ["303816"] = self.OnSubFailed303816,
        ["303817"] = self.OnSubFailed303817
    }
end

function Quest3038:Start()
    print("Start")
end

function Quest3038:OnDestroy()
    print("OnDestroy")
end

function Quest3038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3038:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3038:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest3038:OnSubStart303801(arg1)
    print("OnSubStart303801")
end

function Quest3038:OnSubFinish303801(arg1)
    print("OnSubFinish303801")
end

function Quest3038:OnSubStart303802(arg1)
    print("OnSubStart303802")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(9, true)
    end
end

function Quest3038:OnSubFinish303802(arg1)
    print("OnSubFinish303802")
end

function Quest3038:OnSubFailed303802(arg1)
    print("OnSubFailed303802")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303803(arg1)
    print("OnSubStart303803")
end

function Quest3038:OnSubFinish303803(arg1)
    print("OnSubFinish303803")
end

function Quest3038:OnSubStart303804(arg1)
    print("OnSubStart303804")
end

function Quest3038:OnSubFinish303804(arg1)
    print("OnSubFinish303804")
end

function Quest3038:OnSubStart303805(arg1)
    print("OnSubStart303805")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(12, true)
    end
end

function Quest3038:OnSubFinish303805(arg1)
    print("OnSubFinish303805")
end

function Quest3038:OnSubFailed303805(arg1)
    print("OnSubFailed303805")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303806(arg1)
    print("OnSubStart303806")
    if sceneData.currSceneID == 20345 then
        globalActor:ChangeDay24Time(12, true)
    end
end

function Quest3038:OnSubFinish303806(arg1)
    print("OnSubFinish303806")
end

function Quest3038:OnSubFailed303806(arg1)
    print("OnSubFailed303806")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303807(arg1)
    print("OnSubStart303807")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(14, true)
    end
end

function Quest3038:OnSubFinish303807(arg1)
    print("OnSubFinish303807")
end

function Quest3038:OnSubFailed303807(arg1)
    print("OnSubFailed303807")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303808(arg1)
    print("OnSubStart303808")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(17, true)
    end
end

function Quest3038:OnSubFinish303808(arg1)
    print("OnSubFinish303808")
end

function Quest3038:OnSubFailed303808(arg1)
    print("OnSubFailed303808")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303809(arg1)
    print("OnSubStart303809")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(18, true)
    end
end

function Quest3038:OnSubFinish303809(arg1)
    print("OnSubFinish303809")
end

function Quest3038:OnSubFailed303809(arg1)
    print("OnSubFailed303809")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303810(arg1)
    print("OnSubStart303810")
    if sceneData.currSceneID == 20346 then
        globalActor:ChangeDay24Time(7, true)
    else
        if sceneData.currSceneID == 20343 then
            globalActor:ChangeDay24Time(7, true)
        end
    end
end

function Quest3038:OnSubFinish303810(arg1)
    print("OnSubFinish303810")
end

function Quest3038:OnSubFailed303810(arg1)
    print("OnSubFailed303810")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303811(arg1)
    print("OnSubStart303811")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(11, true)
    else
        if sceneData.currSceneID == 20346 then
            globalActor:ChangeDay24Time(11, true)
        end
    end
end

function Quest3038:OnSubFinish303811(arg1)
    print("OnSubFinish303811")
end

function Quest3038:OnSubFailed303811(arg1)
    print("OnSubFailed303811")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303812(arg1)
    print("OnSubStart303812")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(11, true)
    end
end

function Quest3038:OnSubFinish303812(arg1)
    print("OnSubFinish303812")
end

function Quest3038:OnSubFailed303812(arg1)
    print("OnSubFailed303812")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303813(arg1)
    print("OnSubStart303813")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(11, true)
    end
end

function Quest3038:OnSubFinish303813(arg1)
    print("OnSubFinish303813")
end

function Quest3038:OnSubFailed303813(arg1)
    print("OnSubFailed303813")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303814(arg1)
    print("OnSubStart303814")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(12, true)
    end
end

function Quest3038:OnSubFinish303814(arg1)
    print("OnSubFinish303814")
end

function Quest3038:OnSubFailed303814(arg1)
    print("OnSubFailed303814")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303815(arg1)
    print("OnSubStart303815")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(16, true)
    end
end

function Quest3038:OnSubFinish303815(arg1)
    print("OnSubFinish303815")
end

function Quest3038:OnSubFailed303815(arg1)
    print("OnSubFailed303815")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303816(arg1)
    print("OnSubStart303816")
    if sceneData.currSceneID == 20344 then
        globalActor:ChangeDay24Time(16, true)
    end
end

function Quest3038:OnSubFinish303816(arg1)
    print("OnSubFinish303816")
end

function Quest3038:OnSubFailed303816(arg1)
    print("OnSubFailed303816")
    this:RecycleAllRes()
end

function Quest3038:OnSubStart303817(arg1)
    print("OnSubStart303817")
    if sceneData.currSceneID == 20343 then
        globalActor:ChangeDay24Time(18, true)
    end
end

function Quest3038:OnSubFinish303817(arg1)
    print("OnSubFinish303817")
end

function Quest3038:OnSubFailed303817(arg1)
    print("OnSubFailed303817")
    this:RecycleAllRes()
end

return Quest3038

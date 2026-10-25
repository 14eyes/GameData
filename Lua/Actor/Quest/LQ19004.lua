require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19004 = class("Quest19004", QuestActorProxy)
Quest19004.defaultAlias = "Quest19004"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1900401"] = self.OnSubStart1900401,
        ["1900402"] = self.OnSubStart1900402,
        ["1900403"] = self.OnSubStart1900403,
        ["1900404"] = self.OnSubStart1900404,
        ["1900405"] = self.OnSubStart1900405
    }
end

function Quest19004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1900401"] = self.OnSubFinish1900401,
        ["1900402"] = self.OnSubFinish1900402,
        ["1900403"] = self.OnSubFinish1900403,
        ["1900404"] = self.OnSubFinish1900404,
        ["1900405"] = self.OnSubFinish1900405
    }
end

function Quest19004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1900401"] = self.OnSubFailed1900401,
        ["1900402"] = self.OnSubFailed1900402,
        ["1900403"] = self.OnSubFailed1900403,
        ["1900404"] = self.OnSubFailed1900404,
        ["1900405"] = self.OnSubFailed1900405
    }
end

function Quest19004:Start()
    print("Start")
end

function Quest19004:OnDestroy()
    print("OnDestroy")
end

function Quest19004:OnMainFinished(arg1)
    print("OnMainFinished")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19004Trigger190040101_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19004Trigger190040301_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19004Trigger190040401_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19004Trigger190040501_.alias, 3, false)
end

function Quest19004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19004:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19004Trigger190040101_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19004Trigger190040301_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19004Trigger190040401_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19004Trigger190040501_.alias, 3, false)
end

function Quest19004:NarratorOnlyTaskByData1900402()
    print("NarratorOnlyTaskByData1900402")
    self:NarratorOnlyTaskByData(datas.NarratorWithId19004002)
end

function Quest19004:OnSubStart1900401(arg1)
    print("OnSubStart1900401")
    actorMgr:CreateActorWithPos(datas.Q19004Trigger190040101_.alias, datas.Q19004Trigger190040101_.script, datas.Q19004Trigger190040101_.id, 0, datas.Q19004Trigger190040101_.point.pos, datas.Q19004Trigger190040101_.point.rot, true, false, 3)
end

function Quest19004:OnSubFinish1900401(arg1)
    print("OnSubFinish1900401")
end

function Quest19004:OnSubFailed1900401(arg1)
    print("OnSubFailed1900401")
end

function Quest19004:OnSubStart1900402(arg1)
    print("OnSubStart1900402")
end

function Quest19004:OnSubFinish1900402(arg1)
    print("OnSubFinish1900402")
    self:NarratorOnlyTaskByData(datas.NarratorWithId19004002)
end

function Quest19004:OnSubFailed1900402(arg1)
    print("OnSubFailed1900402")
end

function Quest19004:OnSubStart1900403(arg1)
    print("OnSubStart1900403")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    actorMgr:CreateActorWithPos(datas.Q19004Trigger190040301_.alias, datas.Q19004Trigger190040301_.script, datas.Q19004Trigger190040301_.id, 0, datas.Q19004Trigger190040301_.point.pos, datas.Q19004Trigger190040301_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):HideSelf()
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900401)
end

function Quest19004:OnSubFinish1900403(arg1)
    print("OnSubFinish1900403")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:TryPauseCurAutoNarrator()
end

function Quest19004:OnSubFailed1900403(arg1)
    print("OnSubFailed1900403")
end

function Quest19004:OnSubStart1900404(arg1)
    print("OnSubStart1900404")
    actorMgr:CreateActorWithPos(datas.Q19004Trigger190040401_.alias, datas.Q19004Trigger190040401_.script, datas.Q19004Trigger190040401_.id, 0, datas.Q19004Trigger190040401_.point.pos, datas.Q19004Trigger190040401_.point.rot, true, false, 3)
end

function Quest19004:OnSubFinish1900404(arg1)
    print("OnSubFinish1900404")
end

function Quest19004:OnSubFailed1900404(arg1)
    print("OnSubFailed1900404")
end

function Quest19004:OnSubStart1900405(arg1)
    print("OnSubStart1900405")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900402)
    actorMgr:CreateActorWithPos(datas.Q19004Trigger190040501_.alias, datas.Q19004Trigger190040501_.script, datas.Q19004Trigger190040501_.id, 0, datas.Q19004Trigger190040501_.point.pos, datas.Q19004Trigger190040501_.point.rot, true, false, 3)
end

function Quest19004:OnSubFinish1900405(arg1)
    print("OnSubFinish1900405")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19004:OnSubFailed1900405(arg1)
    print("OnSubFailed1900405")
end

return Quest19004

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72809 = class("Quest72809", QuestActorProxy)
Quest72809.defaultAlias = "Quest72809"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72809:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72809:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7280901"] = self.OnSubStart7280901,
        ["7280902"] = self.OnSubStart7280902,
        ["7280903"] = self.OnSubStart7280903,
        ["7280904"] = self.OnSubStart7280904,
        ["7280905"] = self.OnSubStart7280905,
        ["7280906"] = self.OnSubStart7280906,
        ["7280907"] = self.OnSubStart7280907
    }
end

function Quest72809:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7280901"] = self.OnSubFinish7280901,
        ["7280902"] = self.OnSubFinish7280902,
        ["7280903"] = self.OnSubFinish7280903,
        ["7280904"] = self.OnSubFinish7280904,
        ["7280905"] = self.OnSubFinish7280905,
        ["7280906"] = self.OnSubFinish7280906,
        ["7280907"] = self.OnSubFinish7280907
    }
end

function Quest72809:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7280901"] = self.OnSubFailed7280901,
        ["7280902"] = self.OnSubFailed7280902,
        ["7280903"] = self.OnSubFailed7280903,
        ["7280904"] = self.OnSubFailed7280904,
        ["7280905"] = self.OnSubFailed7280905,
        ["7280906"] = self.OnSubFailed7280906,
        ["7280907"] = self.OnSubFailed7280907
    }
end

function Quest72809:Start()
    print("Start")
end

function Quest72809:OnDestroy()
    print("OnDestroy")
end

function Quest72809:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72809:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72809:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72809:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72809:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72809:CustmiseFunction()
    self:RequestInteractionForceAlias(npcs.Npc3083Data.alias)
end

function Quest72809:OnSubStart7280901(arg1)
    print("OnSubStart7280901")
end

function Quest72809:OnSubFinish7280901(arg1)
    print("OnSubFinish7280901")
    actorMgr:CreateActorWithPos("Q72809Trigger1", "Actor/Gadget/Q72809Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q72809_DAODAJVMINGQU").pos, {x = 0, y = 0, z = 0}, true, false)
end

function Quest72809:OnSubFailed7280901(arg1)
    print("OnSubFailed7280901")
end

function Quest72809:OnSubStart7280902(arg1)
    print("OnSubStart7280902")
end

function Quest72809:OnSubFinish7280902(arg1)
    print("OnSubFinish7280902")
    actorMgr:CreateActorWithPos("Q72809Trigger2", "Actor/Gadget/Q72809Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q72809_TANSUOYINGDI").pos, {x = 0, y = 0, z = 0}, true, false)
end

function Quest72809:OnSubFailed7280902(arg1)
    print("OnSubFailed7280902")
end

function Quest72809:OnSubStart7280903(arg1)
    print("OnSubStart7280903")
end

function Quest72809:OnSubFinish7280903(arg1)
    print("OnSubFinish7280903")
    self:ActorDestroy("Q72809Trigger1")
    self:ActorDestroy("Q72809Trigger2")
end

function Quest72809:OnSubFailed7280903(arg1)
    print("OnSubFailed7280903")
end

function Quest72809:OnSubStart7280904(arg1)
    print("OnSubStart7280904")
    actorMgr:CreateActorWithPos("Q72809Trigger", "Actor/Gadget/Q72809Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72809_DUOQILAI").pos, {x = 0, y = 0, z = 0}, true, false)
end

function Quest72809:OnSubFinish7280904(arg1)
    print("OnSubFinish7280904")
end

function Quest72809:OnSubFailed7280904(arg1)
    print("OnSubFailed7280904")
end

function Quest72809:OnSubStart7280905(arg1)
    print("OnSubStart7280905")
    self:CreateQuestNpc(arg1, npcs.Npc3083Data.id, 1)
    self:RequestInteraction(npcs.Npc3083Data.alias)
end

function Quest72809:OnSubFinish7280905(arg1)
    print("OnSubFinish7280905")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest72809:OnSubFailed7280905(arg1)
    print("OnSubFailed7280905")
end

function Quest72809:OnSubStart7280906(arg1)
    print("OnSubStart7280906")
    self:CreateQuestNpc(arg1, npcs.Npc3083Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3083Data.alias)
    questNpcActor:DoFreeStyle(4190, true, nil, true, true, false)
    questNpcActor:EnableInteraction(false)
end

function Quest72809:OnSubFinish7280906(arg1)
    print("OnSubFinish7280906")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3083Data.alias)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1300, true, nil, true, true, false)
    questNpcActor:EnableInteraction(true)
end

function Quest72809:OnSubFailed7280906(arg1)
    print("OnSubFailed7280906")
end

function Quest72809:OnSubStart7280907(arg1)
    print("OnSubStart7280907")
end

function Quest72809:OnSubFinish7280907(arg1)
    print("OnSubFinish7280907")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3083Data.alias)
end

function Quest72809:OnSubFailed7280907(arg1)
    print("OnSubFailed7280907")
end

return Quest72809

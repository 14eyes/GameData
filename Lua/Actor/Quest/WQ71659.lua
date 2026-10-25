require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71659 = class("Quest71659", QuestActorProxy)
Quest71659.defaultAlias = "Quest71659"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71659:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71659:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7165901"] = self.OnSubStart7165901,
        ["7165902"] = self.OnSubStart7165902,
        ["7165906"] = self.OnSubStart7165906,
        ["7165907"] = self.OnSubStart7165907,
        ["7165903"] = self.OnSubStart7165903,
        ["7165904"] = self.OnSubStart7165904,
        ["7165905"] = self.OnSubStart7165905
    }
end

function Quest71659:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7165901"] = self.OnSubFinish7165901,
        ["7165902"] = self.OnSubFinish7165902,
        ["7165906"] = self.OnSubFinish7165906,
        ["7165907"] = self.OnSubFinish7165907,
        ["7165903"] = self.OnSubFinish7165903,
        ["7165904"] = self.OnSubFinish7165904,
        ["7165905"] = self.OnSubFinish7165905
    }
end

function Quest71659:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71659:Start()
    print("Start")
end

function Quest71659:OnDestroy()
    print("OnDestroy")
end

function Quest71659:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71659:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71659:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2083Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1587Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2083Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q71659Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q71659Trigger1", 3, false)
end

function Quest71659:OnSubStart7165901(arg1)
    print("OnSubStart7165901")
end

function Quest71659:OnSubFinish7165901(arg1)
    print("OnSubFinish7165901")
end

function Quest71659:OnSubStart7165902(arg1)
    print("OnSubStart7165902")
    actorMgr:CreateActorWithPos("Q71659Trigger", "Actor/Gadget/Q71659Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7165902_N1587").pos, sceneData:GetDummyPoint(3, "Q7165902_N1587").rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest71659:OnSubFinish7165902(arg1)
    print("OnSubFinish7165902")
    self:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
end

function Quest71659:OnSubStart7165906(arg1)
    print("OnSubStart7165906")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest71659:OnSubFinish7165906(arg1)
    print("OnSubFinish7165906")
end

function Quest71659:OnSubStart7165907(arg1)
    print("OnSubStart7165907")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest71659:OnSubFinish7165907(arg1)
    print("OnSubFinish7165907")
end

function Quest71659:OnSubStart7165903(arg1)
    print("OnSubStart7165903")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest71659:OnSubFinish7165903(arg1)
    print("OnSubFinish7165903")
end

function Quest71659:OnSubStart7165904(arg1)
    print("OnSubStart7165904")
    actorMgr:CreateActorWithPos("Q71659Trigger1", "Actor/Gadget/Q71659Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7165904_N1587").pos, sceneData:GetDummyPoint(3, "Q7165904_N1587").rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc2083Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest71659:OnSubFinish7165904(arg1)
    print("OnSubFinish7165904")
end

function Quest71659:OnSubStart7165905(arg1)
    print("OnSubStart7165905")
    self:GetQuestNpcActor(npcs.Npc1587Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc2083Data.alias):EnableHeadCtrl(false)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc2083Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest71659:OnSubFinish7165905(arg1)
    print("OnSubFinish7165905")
    self:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2083Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1587Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2083Data.alias, 0, true)
end

return Quest71659

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72170 = class("Quest72170", QuestActorProxy)
Quest72170.defaultAlias = "Quest72170"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72170:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72170:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7217005"] = self.OnSubStart7217005,
        ["7217001"] = self.OnSubStart7217001,
        ["7217002"] = self.OnSubStart7217002,
        ["7217003"] = self.OnSubStart7217003,
        ["7217004"] = self.OnSubStart7217004
    }
end

function Quest72170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7217005"] = self.OnSubFinish7217005,
        ["7217001"] = self.OnSubFinish7217001,
        ["7217002"] = self.OnSubFinish7217002,
        ["7217003"] = self.OnSubFinish7217003,
        ["7217004"] = self.OnSubFinish7217004
    }
end

function Quest72170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7217005"] = self.OnSubFailed7217005,
        ["7217001"] = self.OnSubFailed7217001,
        ["7217002"] = self.OnSubFailed7217002,
        ["7217003"] = self.OnSubFailed7217003,
        ["7217004"] = self.OnSubFailed7217004
    }
end

function Quest72170:Start()
    print("Start")
end

function Quest72170:OnDestroy()
    print("OnDestroy")
end

function Quest72170:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72170:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72170:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72170:RefreshDaily()
    actorMgr:GetActor("Npc20268"):DisableInteeHeadCtrl(false)
    actorMgr:GetActor("Npc20269"):DisableInteeHeadCtrl(false)
    actorMgr:GetActor("Npc20270"):DisableInteeHeadCtrl(false)
    self:SafeDestroyQuestNpc("Npc20268", 3)
    self:SafeDestroyQuestNpc("Npc20269", 3)
    self:SafeDestroyQuestNpc("Npc20270", 3)
    actorUtils.ForceRefreshDaily("Npc20268")
    actorUtils.ForceRefreshDaily("Npc20269")
    actorUtils.ForceRefreshDaily("Npc20270")
    actorMgr:GetActor("Npc20268"):EnableInteraction(true)
    actorMgr:GetActor("Npc20269"):EnableInteraction(true)
    actorMgr:GetActor("Npc20270"):EnableInteraction(true)
end

function Quest72170:Force() end

function Quest72170:OnSubStart7217005(arg1)
    print("OnSubStart7217005")
end

function Quest72170:OnSubFinish7217005(arg1)
    print("OnSubFinish7217005")
end

function Quest72170:OnSubFailed7217005(arg1)
    print("OnSubFailed7217005")
end

function Quest72170:OnSubStart7217001(arg1)
    print("OnSubStart7217001")
    actorMgr:GetActor("Npc20268"):DisableInteeHeadCtrl(true)
    actorMgr:GetActor("Npc20269"):DisableInteeHeadCtrl(true)
    actorMgr:GetActor("Npc20270"):DisableInteeHeadCtrl(true)
end

function Quest72170:OnSubFinish7217001(arg1)
    print("OnSubFinish7217001")
end

function Quest72170:OnSubFailed7217001(arg1)
    print("OnSubFailed7217001")
end

function Quest72170:OnSubStart7217002(arg1)
    print("OnSubStart7217002")
end

function Quest72170:OnSubFinish7217002(arg1)
    print("OnSubFinish7217002")
end

function Quest72170:OnSubFailed7217002(arg1)
    print("OnSubFailed7217002")
end

function Quest72170:OnSubStart7217003(arg1)
    print("OnSubStart7217003")
end

function Quest72170:OnSubFinish7217003(arg1)
    print("OnSubFinish7217003")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q7216804")
end

function Quest72170:OnSubFailed7217003(arg1)
    print("OnSubFailed7217003")
end

function Quest72170:OnSubStart7217004(arg1)
    print("OnSubStart7217004")
end

function Quest72170:OnSubFinish7217004(arg1)
    print("OnSubFinish7217004")
    actorMgr:GetActor("Npc20268"):EnableInteraction(false)
    actorMgr:GetActor("Npc20269"):EnableInteraction(false)
    actorMgr:GetActor("Npc20270"):EnableInteraction(false)
    self:ShowBlackScreen(0.5, 2, 1, self.RefreshDaily, nil, nil, "QUEST_Message_Q7216801", false, true)
end

function Quest72170:OnSubFailed7217004(arg1)
    print("OnSubFailed7217004")
end

return Quest72170

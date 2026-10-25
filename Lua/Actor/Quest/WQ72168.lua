require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72168 = class("Quest72168", QuestActorProxy)
Quest72168.defaultAlias = "Quest72168"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72168:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72168:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216801"] = self.OnSubStart7216801,
        ["7216802"] = self.OnSubStart7216802,
        ["7216803"] = self.OnSubStart7216803,
        ["7216804"] = self.OnSubStart7216804
    }
end

function Quest72168:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216801"] = self.OnSubFinish7216801,
        ["7216802"] = self.OnSubFinish7216802,
        ["7216803"] = self.OnSubFinish7216803,
        ["7216804"] = self.OnSubFinish7216804
    }
end

function Quest72168:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216801"] = self.OnSubFailed7216801,
        ["7216802"] = self.OnSubFailed7216802,
        ["7216803"] = self.OnSubFailed7216803,
        ["7216804"] = self.OnSubFailed7216804
    }
end

function Quest72168:Start()
    print("Start")
end

function Quest72168:OnDestroy()
    print("OnDestroy")
end

function Quest72168:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72168:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72168:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72168:RefreshDaily()
    actorUtils.ForceRefreshDaily("Npc20268")
    actorUtils.ForceRefreshDaily("Npc20269")
    actorUtils.ForceRefreshDaily("Npc20270")
    actorMgr:GetActor("Npc20268"):EnableInteraction(true)
    actorMgr:GetActor("Npc20269"):EnableInteraction(true)
    actorMgr:GetActor("Npc20270"):EnableInteraction(true)
end

function Quest72168:OnSubStart7216801(arg1)
    print("OnSubStart7216801")
    actorMgr:GetActor("Npc20268"):DisableInteeHeadCtrl(true)
    actorMgr:GetActor("Npc20269"):DisableInteeHeadCtrl(true)
    actorMgr:GetActor("Npc20270"):DisableInteeHeadCtrl(true)
end

function Quest72168:OnSubFinish7216801(arg1)
    print("OnSubFinish7216801")
end

function Quest72168:OnSubFailed7216801(arg1)
    print("OnSubFailed7216801")
end

function Quest72168:OnSubStart7216802(arg1)
    print("OnSubStart7216802")
end

function Quest72168:OnSubFinish7216802(arg1)
    print("OnSubFinish7216802")
end

function Quest72168:OnSubFailed7216802(arg1)
    print("OnSubFailed7216802")
end

function Quest72168:OnSubStart7216803(arg1)
    print("OnSubStart7216803")
end

function Quest72168:OnSubFinish7216803(arg1)
    print("OnSubFinish7216803")
    actorMgr:GetActor("Npc20268"):DisableInteeHeadCtrl(false)
    actorMgr:GetActor("Npc20269"):DisableInteeHeadCtrl(false)
    actorMgr:GetActor("Npc20270"):DisableInteeHeadCtrl(false)
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q7216804")
end

function Quest72168:OnSubFailed7216803(arg1)
    print("OnSubFailed7216803")
end

function Quest72168:OnSubStart7216804(arg1)
    print("OnSubStart7216804")
end

function Quest72168:OnSubFinish7216804(arg1)
    print("OnSubFinish7216804")
    self.ActionSafeCall(self, function()
        actorMgr:GetActor("Npc20268"):EnableInteraction(false)
        actorMgr:GetActor("Npc20269"):EnableInteraction(false)
        actorMgr:GetActor("Npc20270"):EnableInteraction(false)
        self:ShowBlackScreen(0.3, 4, 1, self.RefreshDaily, nil, nil, "QUEST_Message_Q7216801", false, true)
    end)
end

function Quest72168:OnSubFailed7216804(arg1)
    print("OnSubFailed7216804")
end

return Quest72168

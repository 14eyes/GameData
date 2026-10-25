require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72169 = class("Quest72169", QuestActorProxy)
Quest72169.defaultAlias = "Quest72169"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72169:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72169:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216901"] = self.OnSubStart7216901,
        ["7216905"] = self.OnSubStart7216905,
        ["7216902"] = self.OnSubStart7216902,
        ["7216903"] = self.OnSubStart7216903,
        ["7216904"] = self.OnSubStart7216904
    }
end

function Quest72169:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216901"] = self.OnSubFinish7216901,
        ["7216905"] = self.OnSubFinish7216905,
        ["7216902"] = self.OnSubFinish7216902,
        ["7216903"] = self.OnSubFinish7216903,
        ["7216904"] = self.OnSubFinish7216904
    }
end

function Quest72169:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216901"] = self.OnSubFailed7216901,
        ["7216905"] = self.OnSubFailed7216905,
        ["7216902"] = self.OnSubFailed7216902,
        ["7216903"] = self.OnSubFailed7216903,
        ["7216904"] = self.OnSubFailed7216904
    }
end

function Quest72169:Start()
    print("Start")
end

function Quest72169:OnDestroy()
    print("OnDestroy")
end

function Quest72169:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72169:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72169:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72169:RefreshDaily()
    actorUtils.ForceRefreshDaily("Npc20268")
    actorUtils.ForceRefreshDaily("Npc20269")
    actorUtils.ForceRefreshDaily("Npc20270")
    actorMgr:GetActor("Npc20268"):EnableInteraction(true)
    actorMgr:GetActor("Npc20269"):EnableInteraction(true)
    actorMgr:GetActor("Npc20270"):EnableInteraction(true)
end

function Quest72169:OnSubStart7216901(arg1)
    print("OnSubStart7216901")
    actorMgr:GetActor("Npc20268"):DisableInteeHeadCtrl(true)
    actorMgr:GetActor("Npc20269"):DisableInteeHeadCtrl(true)
    actorMgr:GetActor("Npc20270"):DisableInteeHeadCtrl(true)
end

function Quest72169:OnSubFinish7216901(arg1)
    print("OnSubFinish7216901")
end

function Quest72169:OnSubFailed7216901(arg1)
    print("OnSubFailed7216901")
end

function Quest72169:OnSubStart7216905(arg1)
    print("OnSubStart7216905")
end

function Quest72169:OnSubFinish7216905(arg1)
    print("OnSubFinish7216905")
end

function Quest72169:OnSubFailed7216905(arg1)
    print("OnSubFailed7216905")
end

function Quest72169:OnSubStart7216902(arg1)
    print("OnSubStart7216902")
end

function Quest72169:OnSubFinish7216902(arg1)
    print("OnSubFinish7216902")
end

function Quest72169:OnSubFailed7216902(arg1)
    print("OnSubFailed7216902")
end

function Quest72169:OnSubStart7216903(arg1)
    print("OnSubStart7216903")
    actorMgr:GetActor("Npc20268"):DisableInteeHeadCtrl(false)
end

function Quest72169:OnSubFinish7216903(arg1)
    print("OnSubFinish7216903")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q7216804")
    actorMgr:GetActor("Npc20268"):EnableInteraction(false)
end

function Quest72169:OnSubFailed7216903(arg1)
    print("OnSubFailed7216903")
end

function Quest72169:OnSubStart7216904(arg1)
    print("OnSubStart7216904")
    self:CallDelay(0.5, function()
        actorMgr:GetActor("Npc20268"):EnableInteraction(true)
    end)

    actorMgr:GetActor("Npc20268"):DisableInteeHeadCtrl(false)
    actorMgr:GetActor("Npc20269"):DisableInteeHeadCtrl(false)
    actorMgr:GetActor("Npc20270"):DisableInteeHeadCtrl(false)
end

function Quest72169:OnSubFinish7216904(arg1)
    print("OnSubFinish7216904")
    self.ActionSafeCall(self, function()
        actorMgr:GetActor("Npc20268"):EnableInteraction(false)
        actorMgr:GetActor("Npc20269"):EnableInteraction(false)
        actorMgr:GetActor("Npc20270"):EnableInteraction(false)
        self:ShowBlackScreen(0.3, 4, 1, self.RefreshDaily, nil, nil, "QUEST_Message_Q7216801", false, true)
    end)
end

function Quest72169:OnSubFailed7216904(arg1)
    print("OnSubFailed7216904")
end

return Quest72169

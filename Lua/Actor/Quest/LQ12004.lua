require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12004 = class("Quest12004", QuestActorProxy)
Quest12004.defaultAlias = "Quest12004"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12004:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1200401"] = self.OnSubStart1200401,
        ["1200403"] = self.OnSubStart1200403,
        ["1200402"] = self.OnSubStart1200402
    }
end

function Quest12004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1200401"] = self.OnSubFinish1200401,
        ["1200403"] = self.OnSubFinish1200403,
        ["1200402"] = self.OnSubFinish1200402
    }
end

function Quest12004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1200401"] = self.OnSubFailed1200401,
        ["1200403"] = self.OnSubFailed1200403,
        ["1200402"] = self.OnSubFailed1200402
    }
end

function Quest12004:Start()
    print("Start")
end

function Quest12004:OnDestroy()
    print("OnDestroy")
end

function Quest12004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12004:ClearAll()
    print("ClearAll")
    this:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest12004:OnSubStart1200401(arg1)
    print("OnSubStart1200401")
end

function Quest12004:OnSubFinish1200401(arg1)
    print("OnSubFinish1200401")
end

function Quest12004:OnSubFailed1200401(arg1)
    print("OnSubFailed1200401")
end

function Quest12004:OnSubStart1200403(arg1)
    print("OnSubStart1200403")
    actorMgr:CreateActorWithPos(datas.Q12004Trigger_.alias, datas.Q12004Trigger_.script, datas.Q12004Trigger_.id, 0, datas.Q12004Trigger_.point.pos, datas.Q12004Trigger_.point.rot, true, false, 3)
end

function Quest12004:OnSubFinish1200403(arg1)
    print("OnSubFinish1200403")
end

function Quest12004:OnSubFailed1200403(arg1)
    print("OnSubFailed1200403")
end

function Quest12004:OnSubStart1200402(arg1)
    print("OnSubStart1200402")
    print("OnSubStart1200402")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1013Data.alias})
    self.ShowBlackScreen(self, 0, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 1)
        self:RequestInteraction(npcs.Npc1013Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest12004:OnSubFinish1200402(arg1)
    print("OnSubFinish1200402")
    print("OnSubFinish1200402")
    self:ActionSafeCall(self.ClearAll)
    local actor = actorMgr:GetActor(datas.Q12004Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12004:OnSubFailed1200402(arg1)
    print("OnSubFailed1200402")
end

return Quest12004

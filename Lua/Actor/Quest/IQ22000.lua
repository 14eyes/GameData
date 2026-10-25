require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22000 = class("Quest22000", QuestActorProxy)
Quest22000.defaultAlias = "Quest22000"
local clientData
local mainID
local subIDs
local actorAlias
local actors
local datas

function Quest22000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    subIDs = clientData.SubIDs
    actorAlias = clientData.ActorAlias
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest22000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200001"] = self.OnSubStart2200001,
        ["2200002"] = self.OnSubStart2200002,
        ["2200003"] = self.OnSubStart2200003,
        ["2200004"] = self.OnSubStart2200004,
        ["2200005"] = self.OnSubStart2200005
    }
end

function Quest22000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200001"] = self.OnSubFinish2200001,
        ["2200002"] = self.OnSubFinish2200002,
        ["2200003"] = self.OnSubFinish2200003,
        ["2200004"] = self.OnSubFinish2200004,
        ["2200005"] = self.OnSubFinish2200005
    }
end

function Quest22000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200001"] = self.OnSubFailed2200001,
        ["2200002"] = self.OnSubFailed2200002,
        ["2200003"] = self.OnSubFailed2200003,
        ["2200004"] = self.OnSubFailed2200004,
        ["2200005"] = self.OnSubFailed2200005
    }
end

function Quest22000:Blackscreen()
    print("Blackscreen")
    self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
end

function Quest22000:Cleardata()
    print("Cleardata")
    self:DestroyQuestNpcActor(actors.Lulu.alias, 3)
    self:DestroyQuestNpcActor(actors.Meng.alias, 3)
    self:DestroyQuestNpcActor(actors.Fei.alias, 3)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22000:Start()
    print("Start")
end

function Quest22000:OnDestroy()
    print("OnDestroy")
end

function Quest22000:OnSubStart2200001(arg1)
    print("OnSubStart2200001")
    self:CreateQuestNpc(arg1, actors.Fei.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22000:OnSubFinish2200001(arg1)
    print("OnSubFinish2200001")
    self.ActionSafeCall(self, function()
        self:RequestInteraction("Npc203101")
    end)
end

function Quest22000:OnSubFailed2200001(arg1)
    print("OnSubFailed2200001")
end

function Quest22000:OnSubStart2200002(arg1)
    print("OnSubStart2200002")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22000:OnSubFinish2200002(arg1)
    print("OnSubFinish2200002")
end

function Quest22000:OnSubFailed2200002(arg1)
    print("OnSubFailed2200002")
end

function Quest22000:OnSubStart2200003(arg1)
    print("OnSubStart2200003")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22000:OnSubFinish2200003(arg1)
    print("OnSubFinish2200003")
    self.NarratorOnlyTask(self, datas.NarratorTable)
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self.CreateQuestNpcByIdWithPos(self, 2200003, actors.Paimon.id, 1, avatarPos, M.Dir2Euler(v))
    self.CallDelay(self, 3, function()
        local questNpcActor = self:GetQuestNpcActor(clientData.Actors.Paimon.alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest22000:OnSubFailed2200003(arg1)
    print("OnSubFailed2200003")
end

function Quest22000:OnSubStart2200004(arg1)
    print("OnSubStart2200004")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22000:OnSubFinish2200004(arg1)
    print("OnSubFinish2200004")
    self:CallDelay(2, self.Blackscreen)
end

function Quest22000:OnSubFailed2200004(arg1)
    print("OnSubFailed2200004")
end

function Quest22000:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest22000:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest22000:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(actors.Meng.alias, 3)
    self:DestroyQuestNpcActor(actors.Fei.alias, 3)
    self:DestroyQuestNpcActor(actors.Lulu.alias, 3)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

return Quest22000

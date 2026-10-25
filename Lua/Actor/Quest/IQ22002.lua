require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22002 = class("Quest22002", QuestActorProxy)
Quest22002.defaultAlias = "Quest22002"
local clientData
local mainID
local subIDs
local actorAlias
local actors
local datas

function Quest22002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    subIDs = clientData.SubIDs
    actorAlias = clientData.ActorAlias
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest22002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200201"] = self.OnSubStart2200201,
        ["2200202"] = self.OnSubStart2200202,
        ["2200203"] = self.OnSubStart2200203,
        ["2200204"] = self.OnSubStart2200204
    }
end

function Quest22002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200201"] = self.OnSubFinish2200201,
        ["2200202"] = self.OnSubFinish2200202,
        ["2200203"] = self.OnSubFinish2200203,
        ["2200204"] = self.OnSubFinish2200204
    }
end

function Quest22002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200201"] = self.OnSubFailed2200201,
        ["2200202"] = self.OnSubFailed2200202,
        ["2200203"] = self.OnSubFailed2200203,
        ["2200204"] = self.OnSubFailed2200204
    }
end

function Quest22002:Blackscreen()
    print("Blackscreen")
    self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
end

function Quest22002:Cleardata()
    print("Cleardata")
    self:DestroyQuestNpcActor(actors.Lulu.alias, 3)
    self:DestroyQuestNpcActor(actors.Meng.alias, 3)
    self:DestroyQuestNpcActor(actors.Fei.alias, 3)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22002:Start()
    print("Start")
end

function Quest22002:OnDestroy()
    print("OnDestroy")
end

function Quest22002:OnSubStart2200201(arg1)
    print("OnSubStart2200201")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
    self:CreateQuestNpc(arg1, actors.Fei.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 3)
end

function Quest22002:OnSubFinish2200201(arg1)
    print("OnSubFinish2200201")
end

function Quest22002:OnSubFailed2200201(arg1)
    print("OnSubFailed2200201")
end

function Quest22002:OnSubStart2200202(arg1)
    print("OnSubStart2200202")
    self:RequestInteraction(actors.Meng.alias)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22002:OnSubFinish2200202(arg1)
    print("OnSubFinish2200202")
end

function Quest22002:OnSubFailed2200202(arg1)
    print("OnSubFailed2200202")
end

function Quest22002:OnSubStart2200203(arg1)
    print("OnSubStart2200203")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22002:OnSubFinish2200203(arg1)
    print("OnSubFinish2200203")
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
    self.CreateQuestNpcByIdWithPos(self, 2200203, actors.Paimon.id, 1, avatarPos, M.Dir2Euler(v))
    self.CallDelay(self, 3, function()
        local questNpcActor = self:GetQuestNpcActor(clientData.Actors.Paimon.alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest22002:OnSubFailed2200203(arg1)
    print("OnSubFailed2200203")
end

function Quest22002:OnSubStart2200204(arg1)
    print("OnSubStart2200204")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22002:OnSubFinish2200204(arg1)
    print("OnSubFinish2200204")
    self:CallDelay(2, self.Blackscreen)
end

function Quest22002:OnSubFailed2200204(arg1)
    print("OnSubFailed2200204")
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22002:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest22002:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest22002:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(actors.Meng.alias, 3)
    self:DestroyQuestNpcActor(actors.Fei.alias, 3)
    self:DestroyQuestNpcActor(actors.Lulu.alias, 3)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

return Quest22002

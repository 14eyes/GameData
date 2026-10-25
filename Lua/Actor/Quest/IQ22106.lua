require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22106 = class("Quest22106", QuestActorProxy)
Quest22106.defaultAlias = "Quest22106"
local clientData
local actors
local n

function Quest22106:OnDataLoaded()
    clientData = self.clientData
    n = 22112
    actors = clientData.Actors
end

function Quest22106:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2210601"] = self.OnSubStart2210601
    self.subStartHandlers["2210602"] = self.OnSubStart2210602
    self.subStartHandlers["2210603"] = self.OnSubStart2210603
    self.subStartHandlers["2210604"] = self.OnSubStart2210604
    self.subStartHandlers["2210605"] = self.OnSubStart2210605
    self.subStartHandlers["2210606"] = self.OnSubStart2210606
    self.subStartHandlers["2210607"] = self.OnSubStart2210607
    self.subStartHandlers["2210608"] = self.OnSubStart2210608
    self.subStartHandlers["2210609"] = self.OnSubStart2210609
    self.subStartHandlers["2210610"] = self.OnSubStart2210610
    self.subStartHandlers["2210611"] = self.OnSubStart2210611
    self.subStartHandlers["2210612"] = self.OnSubStart2210612
    self.subStartHandlers["2210613"] = self.OnSubStart2210613
    self.subStartHandlers["2210614"] = self.OnSubStart2210614
end

function Quest22106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2210601"] = self.OnSubFinish2210601
    self.subFinishHandlers["2210602"] = self.OnSubFinish2210602
    self.subFinishHandlers["2210603"] = self.OnSubFinish2210603
    self.subFinishHandlers["2210604"] = self.OnSubFinish2210604
    self.subFinishHandlers["2210605"] = self.OnSubFinish2210605
    self.subFinishHandlers["2210606"] = self.OnSubFinish2210606
    self.subFinishHandlers["2210607"] = self.OnSubFinish2210607
    self.subFinishHandlers["2210608"] = self.OnSubFinish2210608
    self.subFinishHandlers["2210609"] = self.OnSubFinish2210609
    self.subFinishHandlers["2210610"] = self.OnSubFinish2210610
    self.subFinishHandlers["2210611"] = self.OnSubFinish2210611
    self.subFinishHandlers["2210612"] = self.OnSubFinish2210612
    self.subFinishHandlers["2210613"] = self.OnSubFinish2210613
    self.subFinishHandlers["2210614"] = self.OnSubFinish2210614
end

function Quest22106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2210601"] = self.OnSubFailed2210601
    self.subFailedHandlers["2210602"] = self.OnSubFailed2210602
    self.subFailedHandlers["2210603"] = self.OnSubFailed2210603
    self.subFailedHandlers["2210604"] = self.OnSubFailed2210604
    self.subFailedHandlers["2210605"] = self.OnSubFailed2210605
    self.subFailedHandlers["2210606"] = self.OnSubFailed2210606
    self.subFailedHandlers["2210607"] = self.OnSubFailed2210607
    self.subFailedHandlers["2210608"] = self.OnSubFailed2210608
    self.subFailedHandlers["2210609"] = self.OnSubFailed2210609
    self.subFailedHandlers["2210610"] = self.OnSubFailed2210610
    self.subFailedHandlers["2210611"] = self.OnSubFailed2210611
    self.subFailedHandlers["2210612"] = self.OnSubFailed2210612
    self.subFailedHandlers["2210613"] = self.OnSubFailed2210613
    self.subFailedHandlers["2210614"] = self.OnSubFailed2210614
end

function Quest22106:InvokeOnInteraction(arg1)
    local actor = actorMgr:GetActor("22106")
    if arg1 == 1 and actor ~= nil then
        actor:FinishQuestID(false, 2210611)
    end

    if arg1 == 2 and actor ~= nil then
        actor:FinishQuestID(true, 2210611)
        actor:FinishQuestID(false, 2210612)
    end
end

function Quest22106:Blackscreen()
    print("Blackscreen")
    self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
end

function Quest22106:Cleardata()
    print("Cleardata")
    self:DestroyQuestNpcActor(actors.Lulu.alias, 3)
    self:DestroyQuestNpcActor(actors.Meng.alias, 3)
    self:DestroyQuestNpcActor(actors.Fei.alias, 3)
    local actor = actorMgr:GetActor("22106")
    local questNpcActor = actor:GetQuestNpcActor(actors.Lulu.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = actor:GetQuestNpcActor(actors.Meng.alias)
    if v ~= nil then
        v:Destroy(false)
    end

    local questNpcActor2 = actor:GetQuestNpcActor(actors.Fei.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210601(arg1) end

function Quest22106:OnSubFinish2210601(arg1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFailed2210601(arg1) end

function Quest22106:OnSubStart2210602(arg1)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Fei.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210602(arg1) end

function Quest22106:OnSubFailed2210602(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210603(arg1)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Fei.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210603(arg1) end

function Quest22106:OnSubFailed2210603(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210604(arg1)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Fei.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210604(arg1) end

function Quest22106:OnSubFailed2210604(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210605(arg1)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Fei.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210605(arg1) end

function Quest22106:OnSubFailed2210605(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210606(arg1)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Fei.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210606(arg1) end

function Quest22106:OnSubFailed2210606(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210607(arg1)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Fei.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210607(arg1) end

function Quest22106:OnSubFailed2210607(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210608(arg1)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Fei.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210608(arg1) end

function Quest22106:OnSubFailed2210608(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210609(arg1)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Fei.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210609(arg1) end

function Quest22106:OnSubFailed2210609(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210610(arg1)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Fei.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210610(arg1) end

function Quest22106:OnSubFailed2210610(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210612(arg1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210612(arg1) end

function Quest22106:OnSubFailed2210612(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210611(arg1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    local v = self:GetQuestVar(arg1.QuestConfigId, 1)
    local questVar2 = self:GetQuestVar(arg1.QuestConfigId, 2)
    local n = 0
    local n2 = 0
    local n3 = 0
    local questVar3 = self:GetQuestVar(arg1.QuestConfigId, 0)
    local questVar4 = self:GetQuestVar(arg1.QuestConfigId, 1)
    local questVar5 = self:GetQuestVar(arg1.QuestConfigId, 2)
    print("11 VarA is " .. questVar3)
    print("11 VarB is " .. questVar4)
    print("11 VarC is " .. questVar5)
    if questVar3 == 1 then
        n = 1
    end

    if questVar3 == 2 then
        n = 2
    end

    if questVar3 == 3 then
        n = 0
    end

    if questVar4 == 1 then
        n2 = -1
    end

    if questVar4 == 2 then
        n2 = 2
    end

    if questVar4 == 3 then
        n2 = 3
    end

    if questVar5 == 1 then
        n3 = 0
    end

    if questVar5 == 2 then
        n3 = -1
    end

    if questVar5 == 3 then
        n3 = 3
    end

    local n4 = n + n2 + n3 + 10
    local questVar6 = self:GetQuestVar(arg1.QuestConfigId, 3)
    self:SetQuestVar(arg1.QuestConfigId, 3, n4)
    local questVar7 = self:GetQuestVar(arg1.QuestConfigId, 3)
    print("VarD is " .. questVar7)
end

function Quest22106:OnSubFinish2210611(arg1) end

function Quest22106:OnSubFailed2210611(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210613(arg1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210613(arg1)
    local actor = actorMgr:GetActor("22106")
    if actor ~= nil then
        actor:FinishQuestID(false, 2210614)
    end

    self:CallDelay(2, self.Blackscreen)
end

function Quest22106:OnSubFailed2210613(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210614(arg1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210614(arg1) end

function Quest22106:OnSubFailed2210614(arg1)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:Start() end
function Quest22106:OnDestroy() end
function Quest22106:OnMainFinished(arg1) end
function Quest22106:OnMainFailed(arg1) end

function Quest22106:OnMainCanceled(arg1)
    print("MainQuest22106 Canceled")
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
    self:Cleardata()
end

return Quest22106

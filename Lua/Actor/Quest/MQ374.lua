require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest374 = class("Quest374", QuestActorProxy)
local DailyNPCManager = require("Actor/DailyNPCManager")

Quest374.defaultAlias = "Quest374"
local clientData
local subIDs
local paimonData
local wendyData
local maidData
local guardData
local v = require("Actor/DailyNPCManager")

function Quest374:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    wendyData = clientData.WendyData
    maidData = clientData.MaidData
    guardData = clientData.GuardData
end

function Quest374:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37408"] = self.OnSubStart37408
    self.subStartHandlers["37407"] = self.OnSubStart37407
    self.subStartHandlers["37401"] = self.OnSubStart37401
    self.subStartHandlers["37402"] = self.OnSubStart37402
    self.subStartHandlers["37403"] = self.OnSubStart37403
    self.subStartHandlers["37404"] = self.OnSubStart37404
    self.subStartHandlers["37405"] = self.OnSubStart37405
    self.subStartHandlers["37406"] = self.OnSubStart37406
end

function Quest374:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37408"] = self.OnSubFinish37408
    self.subFinishHandlers["37407"] = self.OnSubFinish37407
    self.subFinishHandlers["37401"] = self.OnSubFinish37401
    self.subFinishHandlers["37402"] = self.OnSubFinish37402
    self.subFinishHandlers["37403"] = self.OnSubFinish37403
    self.subFinishHandlers["37404"] = self.OnSubFinish37404
    self.subFinishHandlers["37405"] = self.OnSubFinish37405
    self.subFinishHandlers["37406"] = self.OnSubFinish37406
end

function Quest374:OnSubStart37408(arg1)
    print("37408 start:...")
    self:ActionSafeCall(self.CleanNPC)
    actorMgr:CreateActorWithPos("Q37408Trigger", "Actor/Gadget/Q37408Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q372Venti").pos, sceneData:GetDummyPoint(3, "Q372Venti").rot, true, false)
end

function Quest374:CleanNPC(arg1)
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        arg1:CreateQuestNpcById(37408, wendyData.WendyID)
    end)
end

function Quest374:OnSubStart37407(arg1)
    print("37402 start:...")
    self:NotifyTo("MengdeInsomniaStand_10", v.NpcEventType.HIDESELF, true)
end

function Quest374:OnSubStart37401(arg1)
    print("37401 start ")
    self:NotifyTo("Npc1430", v.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", v.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    self:CreateQuestNpc(arg1, maidData.MaidID)
    self:CreateQuestNpc(arg1, guardData.GuardID)
end

function Quest374:OnSubStart37402(arg1)
    print("37402 start:...")
    self:NotifyTo("Npc1430", v.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", v.NpcEventType.HIDESELF, true)
end

function Quest374:OnSubStart37403(arg1)
    print("37403 start:...")
    self:NotifyTo("Npc1430", v.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", v.NpcEventType.HIDESELF, true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest374:OnSubStart37404(arg1)
    print("37404 start:...")
    self:NotifyTo("Npc1430", v.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", v.NpcEventType.HIDESELF, true)
end

function Quest374:OnSubStart37405(arg1)
    print("37405 start:...")
    self:NotifyTo("Npc1430", v.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", v.NpcEventType.HIDESELF, true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest374:OnSubStart37406(arg1)
    print("37406 start:...")
    self:NotifyTo("Npc1430", v.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", v.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
    questNpcActor:Standby()
    questNpcActor:TurnTo(M.Euler2DirXZ(paimonData.bornDir1))
end

function Quest374:OnSubFinish37407(arg1)
    print("OnFinished 37407")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest374:OnSubFinish37401(arg1)
    print("OnFinished 37401")
end

function Quest374:OnSubFinish37402(arg1)
    print("OnFinished 37402")
end

function Quest374:OnSubFinish37403(arg1)
    print("OnFinished 37403")
    local questNpcActor = self:GetQuestNpcActor(maidData.Maid)
    if questNpcActor ~= nil then
        questNpcActor:ClearFollowTask()
        questNpcActor:WalkToTask(maidData.bornPos2, function(arg1, arg2)
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(maidData.bornDir2))
        end)
    end
end

function Quest374:OnSubFinish37404(arg1)
    print("OnFinished 37404")
end

function Quest374:OnSubFinish37405(arg1)
    print("OnFinished 37405")
end

function Quest374:OnSubFinish37406(arg1)
    print("OnFinished 37406")
    local questNpcActor = self:GetQuestNpcActor(maidData.Maid)
    local pos = questNpcActor:GetPos()
    local avatarPos = actorUtils.GetAvatarPos()
    if 3.5 < M.Dist(pos, avatarPos) and questNpcActor ~= nil then
        questNpcActor:ClearFollowTask()
        questNpcActor:WalkToTask(maidData.bornPos2, function(arg1, arg2)
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(maidData.bornDir2))
        end)
    end

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest374:InvokeOnInteraction(arg1)
    if arg1 == 3 then
        print("Now Spawn Tears")
        self:SpawnGadgetById(37407, 70300042)
    elseif arg1 == 4 then
        print("Now Destroy Tears")
        self:UnSpawn("Tears")
    elseif arg1 == 6 then
        local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(wendyData.desPos, Quest374.wendyVanish)
        end
    end
end

function Quest374:wendyVanish()
    local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
    if questNpcActor ~= nil then
        questNpcActor:SetVisible(false)
    end
end

function Quest374:Start() end
function Quest374:OnDestroy() end
return Quest374

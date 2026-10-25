require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2023 = class("Quest2023", QuestActorProxy)
Quest2023.defaultAlias = "Quest2023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas
local n

function Quest2023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["202301"] = self.OnSubStart202301,
        ["202302"] = self.OnSubStart202302,
        ["202303"] = self.OnSubStart202303
    }
end

function Quest2023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["202301"] = self.OnSubFinish202301,
        ["202302"] = self.OnSubFinish202302,
        ["202303"] = self.OnSubFinish202303
    }
end

function Quest2023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["202301"] = self.OnSubFailed202301,
        ["202302"] = self.OnSubFailed202302,
        ["202303"] = self.OnSubFailed202303
    }
end

function Quest2023:Start()
    print("Start")
end

function Quest2023:OnDestroy()
    print("OnDestroy")
end

function Quest2023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2023:TransBack()
    print("TransBack")
    globalActor:EnablePlayerInput(true)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:TransmitPlayerWithTextByQuestId(202302, n, "QUEST_Message_Q202301", 2, arg1.Finishuest202302, function(arg1)
            actorMgr:GetActor(clientData.ActorAlias):CreateQuestNpcByIdWithPos(202303, 12163, 1, datas.GuardPos[n], datas.GuardRot[n])
        end)
    end)
end

function Quest2023:Finishuest202302()
    print("Finishuest202302")
    self:FinishQuestID(false, 202302)
end

function Quest2023:OnSubStart202301(arg1)
    print("OnSubStart202301")
    actorMgr:CreateActorWithPos(datas.Q202301Trigger_.alias, datas.Q202301Trigger_.script, datas.Q202301Trigger_.id, 0, datas.Q202301Trigger_.point.pos, datas.Q202301Trigger_.point.rot, true, false, 3)
end

function Quest2023:OnSubFinish202301(arg1)
    print("OnSubFinish202301")
end

function Quest2023:OnSubFailed202301(arg1)
    print("OnSubFailed202301")
end

function Quest2023:OnSubStart202302(arg1)
    print("OnSubStart202302")
    local avatarPos = actorUtils.GetAvatarPos()
    local dist = M.Dist(datas.GuardPos[1], avatarPos)
    n = 1
    for i = 2, 11 do
        if dist > M.Dist(datas.GuardPos[i], avatarPos) then
            dist = M.Dist(datas.GuardPos[i], avatarPos)
            n = i
        end
    end

    self:CallDelay(6, self.TransBack)
    globalActor:EnablePlayerInput(false)
    self:NarratorOnlyTask(datas.NarratorTable)
end

function Quest2023:OnSubFinish202302(arg1)
    print("OnSubFinish202302")
end

function Quest2023:OnSubFailed202302(arg1)
    print("OnSubFailed202302")
end

function Quest2023:OnSubStart202303(arg1)
    print("OnSubStart202303")
end

function Quest2023:OnSubFinish202303(arg1)
    print("OnSubFinish202303")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc12163Data.alias, 3)
        end)
    end)
end

function Quest2023:OnSubFailed202303(arg1)
    print("OnSubFailed202303")
end

return Quest2023

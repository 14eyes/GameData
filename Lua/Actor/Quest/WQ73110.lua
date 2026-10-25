require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73110 = class("Quest73110", QuestActorProxy)
Quest73110.defaultAlias = "Quest73110"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73110:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73110:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7311001"] = self.OnSubStart7311001,
        ["7311012"] = self.OnSubStart7311012,
        ["7311011"] = self.OnSubStart7311011,
        ["7311010"] = self.OnSubStart7311010,
        ["7311009"] = self.OnSubStart7311009,
        ["7311008"] = self.OnSubStart7311008,
        ["7311013"] = self.OnSubStart7311013,
        ["7311002"] = self.OnSubStart7311002,
        ["7311003"] = self.OnSubStart7311003,
        ["7311004"] = self.OnSubStart7311004,
        ["7311005"] = self.OnSubStart7311005,
        ["7311006"] = self.OnSubStart7311006,
        ["7311007"] = self.OnSubStart7311007
    }
end

function Quest73110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7311001"] = self.OnSubFinish7311001,
        ["7311012"] = self.OnSubFinish7311012,
        ["7311011"] = self.OnSubFinish7311011,
        ["7311010"] = self.OnSubFinish7311010,
        ["7311009"] = self.OnSubFinish7311009,
        ["7311008"] = self.OnSubFinish7311008,
        ["7311013"] = self.OnSubFinish7311013,
        ["7311002"] = self.OnSubFinish7311002,
        ["7311003"] = self.OnSubFinish7311003,
        ["7311004"] = self.OnSubFinish7311004,
        ["7311005"] = self.OnSubFinish7311005,
        ["7311006"] = self.OnSubFinish7311006,
        ["7311007"] = self.OnSubFinish7311007
    }
end

function Quest73110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73110:Start()
    print("Start")
end

function Quest73110:OnDestroy()
    print("OnDestroy")
end

function Quest73110:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73110:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73110:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73110:OnSubStart7311001(arg1)
    print("OnSubStart7311001")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73110:OnSubFinish7311001(arg1)
    print("OnSubFinish7311001")
end

function Quest73110:OnSubStart7311012(arg1)
    print("OnSubStart7311012")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7311012, function(arg1)
            actorUtils.FinishQuestID(false, 7311012)
        end, "")
    end)
end

function Quest73110:OnSubFinish7311012(arg1)
    print("OnSubFinish7311012")
end

function Quest73110:OnSubStart7311011(arg1)
    print("OnSubStart7311011")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7311011, function(arg1)
            actorUtils.FinishQuestID(false, 7311011)
        end, "")
    end)
end

function Quest73110:OnSubFinish7311011(arg1)
    print("OnSubFinish7311011")
end

function Quest73110:OnSubStart7311010(arg1)
    print("OnSubStart7311010")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7311010, function(arg1)
            actorUtils.FinishQuestID(false, 7311010)
        end, "")
    end)
end

function Quest73110:OnSubFinish7311010(arg1)
    print("OnSubFinish7311010")
end

function Quest73110:OnSubStart7311009(arg1)
    print("OnSubStart7311009")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7311009, function(arg1)
            actorUtils.FinishQuestID(false, 7311009)
        end, "")
    end)
end

function Quest73110:OnSubFinish7311009(arg1)
    print("OnSubFinish7311009")
end

function Quest73110:OnSubStart7311008(arg1)
    print("OnSubStart7311008")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7311008, function(arg1)
            actorUtils.FinishQuestID(false, 7311008)
        end, "")
    end)
end

function Quest73110:OnSubFinish7311008(arg1)
    print("OnSubFinish7311008")
end

function Quest73110:OnSubStart7311013(arg1)
    print("OnSubStart7311013")
    actorMgr:CreateActorWithPos("Q73110Trigger", "Actor/Gadget/Q73110Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "T7311001_N4245").pos, sceneData:GetDummyPoint(3, "T7311001_N4245").rot, true, false, 3)
end

function Quest73110:OnSubFinish7311013(arg1)
    print("OnSubFinish7311013")
end

function Quest73110:OnSubStart7311002(arg1)
    print("OnSubStart7311002")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73110:OnSubFinish7311002(arg1)
    print("OnSubFinish7311002")
end

function Quest73110:OnSubStart7311003(arg1)
    print("OnSubStart7311003")
end

function Quest73110:OnSubFinish7311003(arg1)
    print("OnSubFinish7311003")
end

function Quest73110:OnSubStart7311004(arg1)
    print("OnSubStart7311004")
end

function Quest73110:OnSubFinish7311004(arg1)
    print("OnSubFinish7311004")
end

function Quest73110:OnSubStart7311005(arg1)
    print("OnSubStart7311005")
end

function Quest73110:OnSubFinish7311005(arg1)
    print("OnSubFinish7311005")
end

function Quest73110:OnSubStart7311006(arg1)
    print("OnSubStart7311006")
end

function Quest73110:OnSubFinish7311006(arg1)
    print("OnSubFinish7311006")
end

function Quest73110:OnSubStart7311007(arg1)
    print("OnSubStart7311007")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73110:OnSubFinish7311007(arg1)
    print("OnSubFinish7311007")
    self:SafeDestroyQuestNpc(npcs.Npc4245Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20821Data.alias, 3)
end

return Quest73110

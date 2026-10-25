require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73083 = class("Quest73083", QuestActorProxy)
Quest73083.defaultAlias = "Quest73083"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73083:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73083:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7308329"] = self.OnSubStart7308329,
        ["7308319"] = self.OnSubStart7308319,
        ["7308322"] = self.OnSubStart7308322,
        ["7308320"] = self.OnSubStart7308320,
        ["7308323"] = self.OnSubStart7308323,
        ["7308321"] = self.OnSubStart7308321,
        ["7308301"] = self.OnSubStart7308301,
        ["7308318"] = self.OnSubStart7308318,
        ["7308302"] = self.OnSubStart7308302,
        ["7308303"] = self.OnSubStart7308303,
        ["7308304"] = self.OnSubStart7308304,
        ["7308305"] = self.OnSubStart7308305,
        ["7308306"] = self.OnSubStart7308306,
        ["7308307"] = self.OnSubStart7308307,
        ["7308324"] = self.OnSubStart7308324,
        ["7308327"] = self.OnSubStart7308327,
        ["7308308"] = self.OnSubStart7308308,
        ["7308309"] = self.OnSubStart7308309,
        ["7308325"] = self.OnSubStart7308325,
        ["7308311"] = self.OnSubStart7308311,
        ["7308312"] = self.OnSubStart7308312,
        ["7308313"] = self.OnSubStart7308313,
        ["7308314"] = self.OnSubStart7308314,
        ["7308315"] = self.OnSubStart7308315,
        ["7308316"] = self.OnSubStart7308316,
        ["7308328"] = self.OnSubStart7308328,
        ["7308317"] = self.OnSubStart7308317,
        ["7308330"] = self.OnSubStart7308330,
        ["7308326"] = self.OnSubStart7308326,
        ["7308310"] = self.OnSubStart7308310
    }
end

function Quest73083:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7308329"] = self.OnSubFinish7308329,
        ["7308319"] = self.OnSubFinish7308319,
        ["7308322"] = self.OnSubFinish7308322,
        ["7308320"] = self.OnSubFinish7308320,
        ["7308323"] = self.OnSubFinish7308323,
        ["7308321"] = self.OnSubFinish7308321,
        ["7308301"] = self.OnSubFinish7308301,
        ["7308318"] = self.OnSubFinish7308318,
        ["7308302"] = self.OnSubFinish7308302,
        ["7308303"] = self.OnSubFinish7308303,
        ["7308304"] = self.OnSubFinish7308304,
        ["7308305"] = self.OnSubFinish7308305,
        ["7308306"] = self.OnSubFinish7308306,
        ["7308307"] = self.OnSubFinish7308307,
        ["7308324"] = self.OnSubFinish7308324,
        ["7308327"] = self.OnSubFinish7308327,
        ["7308308"] = self.OnSubFinish7308308,
        ["7308309"] = self.OnSubFinish7308309,
        ["7308325"] = self.OnSubFinish7308325,
        ["7308311"] = self.OnSubFinish7308311,
        ["7308312"] = self.OnSubFinish7308312,
        ["7308313"] = self.OnSubFinish7308313,
        ["7308314"] = self.OnSubFinish7308314,
        ["7308315"] = self.OnSubFinish7308315,
        ["7308316"] = self.OnSubFinish7308316,
        ["7308328"] = self.OnSubFinish7308328,
        ["7308317"] = self.OnSubFinish7308317,
        ["7308330"] = self.OnSubFinish7308330,
        ["7308326"] = self.OnSubFinish7308326,
        ["7308310"] = self.OnSubFinish7308310
    }
end

function Quest73083:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73083:Start()
    print("Start")
end

function Quest73083:OnDestroy()
    print("OnDestroy")
end

function Quest73083:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73083:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73083:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73083:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73083:OnSubStart7308329(arg1)
    print("OnSubStart7308329")
end

function Quest73083:OnSubFinish7308329(arg1)
    print("OnSubFinish7308329")
end

function Quest73083:OnSubStart7308319(arg1)
    print("OnSubStart7308319")
    actorMgr:CreateActorWithPos("Q73083Trigger3", "Actor/Gadget/Q73083Trigger3", 70900002, 0, {x = -1989.194, y = 282.317, z = 3995.598}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73083:OnSubFinish7308319(arg1)
    print("OnSubFinish7308319")
end

function Quest73083:OnSubStart7308322(arg1)
    print("OnSubStart7308322")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20822Data.id, 2, npcs.Npc20822Data.alias)
end

function Quest73083:OnSubFinish7308322(arg1)
    print("OnSubFinish7308322")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20822Data.alias, 3)
end

function Quest73083:OnSubStart7308320(arg1)
    print("OnSubStart7308320")
    actorMgr:CreateActorWithPos("Q73083Trigger4", "Actor/Gadget/Q73083Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q7308320_guide").pos, sceneData:GetDummyPoint(3, "Q7308320_guide").rot, true, false, 3)
end

function Quest73083:OnSubFinish7308320(arg1)
    print("OnSubFinish7308320")
end

function Quest73083:OnSubStart7308323(arg1)
    print("OnSubStart7308323")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20822Data.id, 1, npcs.Npc20822Data.alias)
end

function Quest73083:OnSubFinish7308323(arg1)
    print("OnSubFinish7308323")
    self:SafeDestroyQuestNpc(npcs.Npc20822Data.alias, 3)
end

function Quest73083:OnSubStart7308321(arg1)
    print("OnSubStart7308321")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73083:OnSubFinish7308321(arg1)
    print("OnSubFinish7308321")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:ShowTutorialDialog(1283)
    end)
end

function Quest73083:OnSubStart7308301(arg1)
    print("OnSubStart7308301")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
    actorMgr:CreateActorWithPos("Q73083Trigger2", "Actor/Gadget/Q73083Trigger2", 70900002, 0, {x = -2596.185, y = 46.32, z = 5568.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73083:OnSubFinish7308301(arg1)
    print("OnSubFinish7308301")
end

function Quest73083:OnSubStart7308318(arg1)
    print("OnSubStart7308318")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 1, npcs.PaimonData.alias)
end

function Quest73083:OnSubFinish7308318(arg1)
    print("OnSubFinish7308318")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest73083:OnSubStart7308302(arg1)
    print("OnSubStart7308302")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73083:OnSubFinish7308302(arg1)
    print("OnSubFinish7308302")
end

function Quest73083:OnSubStart7308303(arg1)
    print("OnSubStart7308303")
end

function Quest73083:OnSubFinish7308303(arg1)
    print("OnSubFinish7308303")
end

function Quest73083:OnSubStart7308304(arg1)
    print("OnSubStart7308304")
end

function Quest73083:OnSubFinish7308304(arg1)
    print("OnSubFinish7308304")
end

function Quest73083:OnSubStart7308305(arg1)
    print("OnSubStart7308305")
end

function Quest73083:OnSubFinish7308305(arg1)
    print("OnSubFinish7308305")
end

function Quest73083:OnSubStart7308306(arg1)
    print("OnSubStart7308306")
end

function Quest73083:OnSubFinish7308306(arg1)
    print("OnSubFinish7308306")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7308306, nil, "")
    end)
end

function Quest73083:OnSubStart7308307(arg1)
    print("OnSubStart7308307")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
    actorMgr:CreateActorWithPos("Q73083Trigger", "Actor/Gadget/Q73083Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7308307_guide").pos, sceneData:GetDummyPoint(3, "Q7308307_guide").rot, true, false, 3)
end

function Quest73083:OnSubFinish7308307(arg1)
    print("OnSubFinish7308307")
end

function Quest73083:OnSubStart7308324(arg1)
    print("OnSubStart7308324")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 1, npcs.PaimonData.alias)
end

function Quest73083:OnSubFinish7308324(arg1)
    print("OnSubFinish7308324")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest73083:OnSubStart7308327(arg1)
    print("OnSubStart7308327")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
    actorMgr:CreateActorWithPos("Q73083Trigger5", "Actor/Gadget/Q73083Trigger5", 70900002, 0, {x = -2384.797, y = 15.59, z = 5568.178}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73083:OnSubFinish7308327(arg1)
    print("OnSubFinish7308327")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7308327, nil, "")
    end)
end

function Quest73083:OnSubStart7308308(arg1)
    print("OnSubStart7308308")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73083:OnSubFinish7308308(arg1)
    print("OnSubFinish7308308")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7308308, nil, "")
    end)
end

function Quest73083:OnSubStart7308309(arg1)
    print("OnSubStart7308309")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
    actorMgr:CreateActorWithPos("Q73083Trigger1", "Actor/Gadget/Q73083Trigger1", 70900002, 0, {x = -2344.83, y = -263.278, z = 5580.27}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73083:OnSubFinish7308309(arg1)
    print("OnSubFinish7308309")
end

function Quest73083:OnSubStart7308325(arg1)
    print("OnSubStart7308325")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 1, npcs.PaimonData.alias)
end

function Quest73083:OnSubFinish7308325(arg1)
    print("OnSubFinish7308325")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7308325, nil, "")
    end)

    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest73083:OnSubStart7308311(arg1)
    print("OnSubStart7308311")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73083:OnSubFinish7308311(arg1)
    print("OnSubFinish7308311")
end

function Quest73083:OnSubStart7308312(arg1)
    print("OnSubStart7308312")
end

function Quest73083:OnSubFinish7308312(arg1)
    print("OnSubFinish7308312")
end

function Quest73083:OnSubStart7308313(arg1)
    print("OnSubStart7308313")
end

function Quest73083:OnSubFinish7308313(arg1)
    print("OnSubFinish7308313")
end

function Quest73083:OnSubStart7308314(arg1)
    print("OnSubStart7308314")
end

function Quest73083:OnSubFinish7308314(arg1)
    print("OnSubFinish7308314")
end

function Quest73083:OnSubStart7308315(arg1)
    print("OnSubStart7308315")
end

function Quest73083:OnSubFinish7308315(arg1)
    print("OnSubFinish7308315")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7308315, nil, "")
    end)
end

function Quest73083:OnSubStart7308316(arg1)
    print("OnSubStart7308316")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73083:OnSubFinish7308316(arg1)
    print("OnSubFinish7308316")
end

function Quest73083:OnSubStart7308328(arg1)
    print("OnSubStart7308328")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7308328, function(arg1)
            actorUtils.FinishQuestID(false, 7308328)
        end, nil, nil, false)
    end)
end

function Quest73083:OnSubFinish7308328(arg1)
    print("OnSubFinish7308328")
    self:TransmitPlayerById(arg1, 1, nil, function(arg1)
        arg1:LevelLoadFinishSafeCall(function(arg1)
            arg1:NarratorOnlyTask(datas.finish7308316, nil, "")
            arg1:EnterSceneLookCamera({x = -2349.51, y = 462.5, z = 5530.325}, 0.1, 2, false, false)
        end)
    end)
end

function Quest73083:OnSubStart7308317(arg1)
    print("OnSubStart7308317")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73083:OnSubFinish7308317(arg1)
    print("OnSubFinish7308317")
end

function Quest73083:OnSubStart7308330(arg1)
    print("OnSubStart7308330")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7308317, function(arg1)
            actorUtils.FinishQuestID(false, 7308330)
        end, nil, nil, false)
    end)
end

function Quest73083:OnSubFinish7308330(arg1)
    print("OnSubFinish7308330")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7308317, nil, "")
    end)
end

function Quest73083:OnSubStart7308326(arg1)
    print("OnSubStart7308326")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73083:OnSubFinish7308326(arg1)
    print("OnSubFinish7308326")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7308326, nil, "")
    end)
end

function Quest73083:OnSubStart7308310(arg1)
    print("OnSubStart7308310")
    self:CreateQuestNpc(arg1, npcs.Npc4245Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20821Data.id, 2)
end

function Quest73083:OnSubFinish7308310(arg1)
    print("OnSubFinish7308310")
    self:SafeDestroyQuestNpc(npcs.Npc4245Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20821Data.alias, 3)
end

return Quest73083

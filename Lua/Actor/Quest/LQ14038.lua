require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14038 = class("Quest14038", QuestActorProxy)
Quest14038.defaultAlias = "Quest14038"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14038:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1403801"] = self.OnSubStart1403801,
        ["1403802"] = self.OnSubStart1403802,
        ["1403823"] = self.OnSubStart1403823,
        ["1403821"] = self.OnSubStart1403821,
        ["1403803"] = self.OnSubStart1403803,
        ["1403804"] = self.OnSubStart1403804,
        ["1403805"] = self.OnSubStart1403805,
        ["1403806"] = self.OnSubStart1403806,
        ["1403807"] = self.OnSubStart1403807,
        ["1403808"] = self.OnSubStart1403808,
        ["1403824"] = self.OnSubStart1403824,
        ["1403809"] = self.OnSubStart1403809,
        ["1403810"] = self.OnSubStart1403810,
        ["1403811"] = self.OnSubStart1403811,
        ["1403822"] = self.OnSubStart1403822,
        ["1403820"] = self.OnSubStart1403820,
        ["1403812"] = self.OnSubStart1403812,
        ["1403813"] = self.OnSubStart1403813,
        ["1403814"] = self.OnSubStart1403814,
        ["1403815"] = self.OnSubStart1403815,
        ["1403816"] = self.OnSubStart1403816,
        ["1403817"] = self.OnSubStart1403817,
        ["1403826"] = self.OnSubStart1403826,
        ["1403818"] = self.OnSubStart1403818,
        ["1403819"] = self.OnSubStart1403819,
        ["1403825"] = self.OnSubStart1403825
    }
end

function Quest14038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1403801"] = self.OnSubFinish1403801,
        ["1403802"] = self.OnSubFinish1403802,
        ["1403823"] = self.OnSubFinish1403823,
        ["1403821"] = self.OnSubFinish1403821,
        ["1403803"] = self.OnSubFinish1403803,
        ["1403804"] = self.OnSubFinish1403804,
        ["1403805"] = self.OnSubFinish1403805,
        ["1403806"] = self.OnSubFinish1403806,
        ["1403807"] = self.OnSubFinish1403807,
        ["1403808"] = self.OnSubFinish1403808,
        ["1403824"] = self.OnSubFinish1403824,
        ["1403809"] = self.OnSubFinish1403809,
        ["1403810"] = self.OnSubFinish1403810,
        ["1403811"] = self.OnSubFinish1403811,
        ["1403822"] = self.OnSubFinish1403822,
        ["1403820"] = self.OnSubFinish1403820,
        ["1403812"] = self.OnSubFinish1403812,
        ["1403813"] = self.OnSubFinish1403813,
        ["1403814"] = self.OnSubFinish1403814,
        ["1403815"] = self.OnSubFinish1403815,
        ["1403816"] = self.OnSubFinish1403816,
        ["1403817"] = self.OnSubFinish1403817,
        ["1403826"] = self.OnSubFinish1403826,
        ["1403818"] = self.OnSubFinish1403818,
        ["1403819"] = self.OnSubFinish1403819,
        ["1403825"] = self.OnSubFinish1403825
    }
end

function Quest14038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1403826"] = self.OnSubFailed1403826,
        ["1403818"] = self.OnSubFailed1403818,
        ["1403819"] = self.OnSubFailed1403819
    }
end

function Quest14038:Start()
    print("Start")
end

function Quest14038:OnDestroy()
    print("OnDestroy")
end

function Quest14038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14038:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14038:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ActionSafeCall(function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
            questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:LookAt({x = 14.216, y = 1.339, z = 12.47})
        end)
    elseif arg1 == 2 then
        this:ActionSafeCall(function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc1051Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
            questNpcActor:LookAt({x = -1898.321, y = 245, z = 2499.791})
            local v = this:GetQuestNpcActor(npcs.Npc4169Data.alias)
            v:DisableInteeHeadCtrl(true)
            v:LookAt({x = -1897.154, y = 240, z = 2499.089})
        end)
    elseif arg1 == 3 then
        this:ActionSafeCall(function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc14115Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:LookAt({x = 14.2, y = 0.1, z = 9.9})
        end)
    end
end

function Quest14038:OnSubStart1403801(arg1)
    print("OnSubStart1403801")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14121Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14122Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14180Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14258Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14260Data.id, 0, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc14258Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc14260Data.alias)
        v:DoFreeStyle(1190, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    end)
end

function Quest14038:OnSubFinish1403801(arg1)
    print("OnSubFinish1403801")
    this:QuestNarratorTask(datas.Narrator_1403801)
    this:DestroyQuestNpcActor(npcs.Npc14180Data.alias, 3)
end

function Quest14038:OnSubStart1403802(arg1)
    print("OnSubStart1403802")
    actorMgr:CreateActorWithPos("Q14038Trigger10", "Actor/Gadget/Q14038Trigger10", 70900002, 0, {x = -1895.972, y = 243.0, z = 2489.665}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1090Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1090Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14258Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14260Data.alias)
    questNpcActor2:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor2:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
end

function Quest14038:OnSubFinish1403802(arg1)
    print("OnSubFinish1403802")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14258Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14260Data.alias, 3)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest14038:OnSubStart1403823(arg1)
    print("OnSubStart1403823")
end

function Quest14038:OnSubFinish1403823(arg1)
    print("OnSubFinish1403823")
    local questGlobalVar = self:GetQuestGlobalVar(1403801)
    if questGlobalVar == 0 then
        this:TransmitPlayerByData(arg1, 2, datas.TransmitData)
    elseif questGlobalVar == 1 then
        this:TransmitPlayerByData(arg1, 2, datas.TransmitData_01)
    end
end

function Quest14038:OnSubStart1403821(arg1)
    print("OnSubStart1403821")
end

function Quest14038:OnSubFinish1403821(arg1)
    print("OnSubFinish1403821")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData)
end

function Quest14038:OnSubStart1403803(arg1)
    print("OnSubStart1403803")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14038Trigger4", "Actor/Gadget/Q14038Trigger4", 70900002, 0, points.TPos_Q14038Trigger4.pos, points.TPos_Q14038Trigger4.rot, true, false, 1097)
        this:CreateQuestNpc(arg1, npcs.Npc14116Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14309Data.id, 0, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:LookAt({x = 14.216, y = 1.339, z = 12.47})
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    end)
end

function Quest14038:OnSubFinish1403803(arg1)
    print("OnSubFinish1403803")
    this:DestroyQuestNpcActor(npcs.Npc14122Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14121Data.alias, 3)
    actorMgr:DestroyEntityActor("Q14038Trigger4", 1097, false)
end

function Quest14038:OnSubStart1403804(arg1)
    print("OnSubStart1403804")
    actorMgr:CreateActorWithPos("Q14038Trigger7", "Actor/Gadget/Q14038Trigger7", 70900002, 0, points.TPos_Q14038Trigger7.pos, points.TPos_Q14038Trigger7.rot, true, false, 1098)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:LookAt({x = 14.216, y = 1.339, z = 12.47})
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
end

function Quest14038:OnSubFinish1403804(arg1)
    print("OnSubFinish1403804")
    this:DestroyQuestNpcActor(npcs.Npc14116Data.alias, 1098)
    this:ClearNarratorTask()
    this:StopNarrator()
    this:UnCallDelayByQuest("1")
end

function Quest14038:OnSubStart1403805(arg1)
    print("OnSubStart1403805")
end

function Quest14038:OnSubFinish1403805(arg1)
    print("OnSubFinish1403805")
end

function Quest14038:OnSubStart1403806(arg1)
    print("OnSubStart1403806")
end

function Quest14038:OnSubFinish1403806(arg1)
    print("OnSubFinish1403806")
end

function Quest14038:OnSubStart1403807(arg1)
    print("OnSubStart1403807")
end

function Quest14038:OnSubFinish1403807(arg1)
    print("OnSubFinish1403807")
end

function Quest14038:OnSubStart1403808(arg1)
    print("OnSubStart1403808")
end

function Quest14038:OnSubFinish1403808(arg1)
    print("OnSubFinish1403808")
end

function Quest14038:OnSubStart1403824(arg1)
    print("OnSubStart1403824")
end

function Quest14038:OnSubFinish1403824(arg1)
    print("OnSubFinish1403824")
end

function Quest14038:OnSubStart1403809(arg1)
    print("OnSubStart1403809")
end

function Quest14038:OnSubFinish1403809(arg1)
    print("OnSubFinish1403809")
end

function Quest14038:OnSubStart1403810(arg1)
    print("OnSubStart1403810")
    this:CreateLocalGadget(70380361, "2", {x = -0.275, y = 0.57, z = -67.449}, {x = 0.0, y = 161.731, z = 0.0}, 1098, nil, nil, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14121Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14269Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1090Data.alias):DoFreeStyle(1280, true, nil, true, true, false, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4169Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
    v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    v:LookAt({x = 14.216, y = 1.339, z = 12.47})
    v:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q14038Trigger14", "Actor/Gadget/Q14038Trigger14", 70900002, 0, points.TPos_Q14038Trigger14.pos, points.TPos_Q14038Trigger14.rot, true, false, 1098)
end

function Quest14038:OnSubFinish1403810(arg1)
    print("OnSubFinish1403810")
    this:QuestNarratorTask(datas.Narrator_1403803)
end

function Quest14038:OnSubStart1403811(arg1)
    print("OnSubStart1403811")
    this:CreateLocalGadget(70380361, "2", {x = -0.275, y = 0.57, z = -67.449}, {x = 0.0, y = 161.731, z = 0.0}, 1098, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc1090Data.alias):DoFreeStyle(1280, true, nil, true, true, false, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4169Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
    v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    v:LookAt({x = 14.216, y = 1.339, z = 12.47})
    v:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q14038Trigger14", "Actor/Gadget/Q14038Trigger14", 70900002, 0, points.TPos_Q14038Trigger14.pos, points.TPos_Q14038Trigger14.rot, true, false, 1098)
end

function Quest14038:OnSubFinish1403811(arg1)
    print("OnSubFinish1403811")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 1098)
        this:DestroyQuestNpcActor(npcs.Npc4169Data.alias, 1098)
        this:DestroyQuestNpcActor(npcs.Npc14121Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14269Data.alias, 1098)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest14038:OnSubStart1403822(arg1)
    print("OnSubStart1403822")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q14038Trigger5", "Actor/Gadget/Q14038Trigger5", 70900002, 0, points.TPos_Q14038Trigger5.pos, points.TPos_Q14038Trigger5.rot, true, false, 1097)
        this:CreateLocalGadget(70380361, "2", {x = -0.275, y = 0.57, z = -67.449}, {x = 0.0, y = 161.731, z = 0.0}, 1098, nil, nil, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
        questNpcActor:LookAt({x = 14.216, y = 1.339, z = 12.47})
        questNpcActor:DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q14038Trigger14", "Actor/Gadget/Q14038Trigger14", 70900002, 0, points.TPos_Q14038Trigger14.pos, points.TPos_Q14038Trigger14.rot, true, false, 1098)
    end)
end

function Quest14038:OnSubFinish1403822(arg1)
    print("OnSubFinish1403822")
    this:RemoveLocalGadget(70380361, "2")
    this:DestroyQuestNpcActor(npcs.Npc14309Data.alias, 1096)
    this:CancelWeather()
    actorMgr:DestroyEntityActor("Q14008Trigger14", 1908, false)
end

function Quest14038:OnSubStart1403820(arg1)
    print("OnSubStart1403820")
    actorMgr:CreateActorWithPos("Q14038Trigger8", "Actor/Gadget/Q14038Trigger8", 70900002, 0, points.TPos_Q14038Trigger8.pos, points.TPos_Q14038Trigger8.rot, true, false, 1097)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
end

function Quest14038:OnSubFinish1403820(arg1)
    print("OnSubFinish1403820")
    this:ActionSafeCall(function(arg1_2)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 1097)
        this:DestroyQuestNpcActor(npcs.Npc1051Data.alias, 1097)
        this:DestroyQuestNpcActor(npcs.Npc14115Data.alias, 1097)
        this:DestroyQuestNpcActor(npcs.Npc14116Data.alias, 1097)
        this:DestroyQuestNpcActor(npcs.Npc4169Data.alias, 1097)
        this:LightNotifyTo(npcs.Npc4140Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4141Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4139Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4137Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4138Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4136Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4135Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12679Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12720Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12719Data.alias, 0, true)
        this:TransmitPlayerWithDialogTextById(arg1, 3, datas.DialogsId_02, 1, nil, nil)
    end)
end

function Quest14038:OnSubStart1403812(arg1)
    print("OnSubStart1403812")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q14038Trigger", "Actor/Gadget/Q14038Trigger", 70900002, 0, {x = -1963.17, y = 205.249, z = 2570.144}, {x = 0.0, y = 14.134, z = 0.0}, true, false, 3)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
        this:BanCrowdNpc(3304, 2, datas.InstanceIDList, true)
    end)
end

function Quest14038:OnSubFinish1403812(arg1)
    print("OnSubFinish1403812")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc14258Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14259Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14260Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14261Data.alias, 3)
    end)
end

function Quest14038:OnSubStart1403813(arg1)
    print("OnSubStart1403813")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14038Trigger11", "Actor/Gadget/Q14038Trigger11", 70900002, 0, {x = -1889.502, y = 243.0, z = 2492.984}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        this:CreateLocalGadget(70711596, "1", {x = -1880.739, y = 243.948, z = 2505.61}, {x = 0.0, y = 61.035, z = 0.0}, 3, nil, nil, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1090Data.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1090Data.alias):SitOnChair(0, true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
        this:BanCrowdNpc(3304, 2, datas.InstanceIDList, true)
    end)
end

function Quest14038:OnSubFinish1403813(arg1)
    print("OnSubFinish1403813")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 3)
        this:BanCrowdNpc(3304, 2, datas.InstanceIDList, false)
    end)
end

function Quest14038:OnSubStart1403814(arg1)
    print("OnSubStart1403814")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14038Trigger1", "Actor/Gadget/Q14038Trigger1", 70900002, 0, points.TPos_Q14038Trigger1.pos, points.TPos_Q14038Trigger1.rot, true, false, 1098)
        actorMgr:CreateActorWithPos("Q14038Trigger12", "Actor/Gadget/Q14038Trigger12", 70900002, 0, points.TPos_Q14038Trigger12.pos, points.TPos_Q14038Trigger12.rot, true, false, 1097)
        this:CreateLocalGadget(70711596, "1", {x = -1880.739, y = 243.948, z = 2505.61}, {x = 0.0, y = 61.035, z = 0.0}, 3, nil, nil, false, 0)
        this:CreateLocalGadget(70291004, "1", {x = 14.298, y = 0.5, z = 11.669}, {x = 0.0, y = 180.0, z = 0.0}, 1096, nil, nil, false, 0, true)
        this:CreateLocalGadget(70291004, "2", {x = -112.713, y = 0.473, z = -67.943}, {x = 0.0, y = -180.0, z = 0.0}, 1097, nil, nil, false, 0, true)
        this:CreateQuestNpc(arg1, npcs.Npc14115Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14116Data.id, 0, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1051Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor:LookAt({x = -1898.321, y = 245, z = 2499.791})
        local v = this:GetQuestNpcActor(npcs.Npc4169Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:LookAt({x = -1897.154, y = 240, z = 2499.089})
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14115Data.alias)
        questNpcActor2:SitOnChair(0, true)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:LookAt({x = 14.2, y = 0.1, z = 9.9})
        this:GetQuestNpcActor(npcs.Npc14116Data.alias):SitOnChair(0, true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    end)
end

function Quest14038:OnSubFinish1403814(arg1)
    print("OnSubFinish1403814")
    this:ActionSafeCall(function(arg1_2)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc4169Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1051Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14116Data.alias, 1097)
        this:RemoveLocalGadget(70711596, "1")
        this:RemoveLocalGadget(70291004, "2")
        this:TransmitPlayerByData(arg1, 4, datas.TransmitData_02)
    end)
end

function Quest14038:OnSubStart1403815(arg1)
    print("OnSubStart1403815")
    actorMgr:CreateActorWithPos("Q14038Trigger3", "Actor/Gadget/Q14038Trigger3", 70900002, 0, {x = -1888.0, y = 243.0, z = 2497.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:CreateLocalGadget(70291004, "1", {x = 14.298, y = 0.5, z = 11.669}, {x = 0.0, y = 180.0, z = 0.0}, 1096, nil, nil, false, 0, true)
    this:CreateQuestNpc(arg1, npcs.Npc4169Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14245Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4120Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14258Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14259Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14260Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14261Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14115Data.alias)
    questNpcActor:SitOnChair(0, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:LookAt({x = 14.2, y = 0.1, z = 9.9})
    this:GetQuestNpcActor(npcs.Npc4120Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14245Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
end

function Quest14038:OnSubFinish1403815(arg1)
    print("OnSubFinish1403815")
    this:ActionSafeCall(function(arg1_2)
        this:RemoveLocalGadget(70291004, "1")
        this:DestroyQuestNpcActor(npcs.Npc4169Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14258Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14259Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14260Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14261Data.alias, 3)
        this:TransmitPlayerWithDialogTextById(arg1, 5, datas.DialogsId_05, 1, nil, nil)
    end)
end

function Quest14038:OnSubStart1403816(arg1)
    print("OnSubStart1403816")
    actorMgr:CreateActorWithPos("Q14038Trigger2", "Actor/Gadget/Q14038Trigger2", 70900002, 0, points.TPos_Q14038Trigger2.pos, points.TPos_Q14038Trigger2.rot, true, false, 1096)
    this:GetQuestNpcActor(npcs.Npc4120Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14245Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
end

function Quest14038:OnSubFinish1403816(arg1)
    print("OnSubFinish1403816")
    this:ActionSafeCall(function(arg1_2)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14115Data.alias, 3)
        this:TransmitPlayerWithDialogTextById(arg1, 6, datas.DialogsId_04, 1, nil, nil)
    end)
end

function Quest14038:OnSubStart1403817(arg1)
    print("OnSubStart1403817")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14180Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1051Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc4120Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14245Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
        if sceneData.currSceneID == 1097 then
            arg1_2:FinishQuestID(false, 1403817)
        end
    end)
end

function Quest14038:OnSubFinish1403817(arg1)
    print("OnSubFinish1403817")
end

function Quest14038:OnSubStart1403826(arg1)
    print("OnSubStart1403826")
    actorMgr:CreateActorWithPos("Q14038Trigger6", "Actor/Gadget/Q14038Trigger6", 70900002, 0, points.TPos_Q14038Trigger6.pos, points.TPos_Q14038Trigger6.rot, true, false, 1097)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4120Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14245Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
    this:SetWeather("Homeworld/Weather_ClearSky_HomeWorld_Interior_02")
end

function Quest14038:OnSubFinish1403826(arg1)
    print("OnSubFinish1403826")
    this:ActionSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest14038:OnSubFailed1403826(arg1)
    print("OnSubFailed1403826")
    this:DestroyQuestNpcActor(npcs.Npc4169Data.alias, 1097)
    this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 1097)
    this:DestroyQuestNpcActor(npcs.Npc4120Data.alias, 1097)
    this:DestroyQuestNpcActor("Paimon", 1097)
    this:CancelWeather()
end

function Quest14038:OnSubStart1403818(arg1)
    print("OnSubStart1403818")
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1051Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
        local v = this:GetQuestNpcActor(npcs.Npc4169Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1240, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc4120Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14245Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
        this:SetWeather("Homeworld/Weather_ClearSky_HomeWorld_Interior_02")
    end)
end

function Quest14038:OnSubFinish1403818(arg1)
    print("OnSubFinish1403818")
end

function Quest14038:OnSubFailed1403818(arg1)
    print("OnSubFailed1403818")
    this:DestroyQuestNpcActor(npcs.Npc4169Data.alias, 1097)
    this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 1097)
    this:DestroyQuestNpcActor(npcs.Npc4120Data.alias, 1097)
    this:DestroyQuestNpcActor("Paimon", 1097)
    this:CancelWeather()
end

function Quest14038:OnSubStart1403819(arg1)
    print("OnSubStart1403819")
    actorMgr:CreateActorWithPos("Q14038Trigger9", "Actor/Gadget/Q14038Trigger9", 70900002, 0, points.TPos_Q14038Trigger9.pos, points.TPos_Q14038Trigger9.rot, true, false, 1097)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1051Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    local v = this:GetQuestNpcActor(npcs.Npc4169Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4120Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14245Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
    this:SetWeather("Homeworld/Weather_ClearSky_HomeWorld_Interior_02")
end

function Quest14038:OnSubFinish1403819(arg1)
    print("OnSubFinish1403819")
    this:ActionSafeCall(function(arg1_2)
        this:DestroyQuestNpcActor(npcs.Npc14245Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4120Data.alias, 3)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc4169Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc4169Data.alias, 1097)
        this:DestroyQuestNpcActor(npcs.Npc1051Data.alias, 1097)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 1097)
        this:TransmitPlayerByData(arg1, 7, datas.TransmitData_03)
        this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
        this:CancelWeather()
    end)
end

function Quest14038:OnSubFailed1403819(arg1)
    print("OnSubFailed1403819")
    this:DestroyQuestNpcActor(npcs.Npc4169Data.alias, 1097)
    this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 1097)
    this:DestroyQuestNpcActor(npcs.Npc4120Data.alias, 1097)
    this:DestroyQuestNpcActor("Paimon", 1097)
    this:CancelWeather()
end

function Quest14038:OnSubStart1403825(arg1)
    print("OnSubStart1403825")
    actorMgr:CreateActorWithPos("Q14038Trigger13", "Actor/Gadget/Q14038Trigger13", 70900002, 0, points.TPos_Q14038Trigger13.pos, points.TPos_Q14038Trigger13.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc14121Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14122Data.id, 0, false, 0)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
end

function Quest14038:OnSubFinish1403825(arg1)
    print("OnSubFinish1403825")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc14180Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14121Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14122Data.alias, 3)
        this:LightNotifyTo(npcs.Npc4140Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4141Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4139Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4137Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4138Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4136Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4135Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12679Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12720Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12719Data.alias, 0, true)
    end)
end

return Quest14038

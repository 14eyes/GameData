require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74077 = class("Quest74077", QuestActorProxy)
Quest74077.defaultAlias = "Quest74077"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74077:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74077:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7407701"] = self.OnSubStart7407701,
        ["7407702"] = self.OnSubStart7407702,
        ["7407703"] = self.OnSubStart7407703,
        ["7407707"] = self.OnSubStart7407707,
        ["7407718"] = self.OnSubStart7407718,
        ["7407708"] = self.OnSubStart7407708,
        ["7407709"] = self.OnSubStart7407709,
        ["7407722"] = self.OnSubStart7407722,
        ["7407723"] = self.OnSubStart7407723,
        ["7407724"] = self.OnSubStart7407724,
        ["7407725"] = self.OnSubStart7407725,
        ["7407727"] = self.OnSubStart7407727,
        ["7407726"] = self.OnSubStart7407726,
        ["7407728"] = self.OnSubStart7407728,
        ["7407710"] = self.OnSubStart7407710,
        ["7407711"] = self.OnSubStart7407711,
        ["7407712"] = self.OnSubStart7407712,
        ["7407713"] = self.OnSubStart7407713,
        ["7407714"] = self.OnSubStart7407714,
        ["7407715"] = self.OnSubStart7407715,
        ["7407716"] = self.OnSubStart7407716,
        ["7407717"] = self.OnSubStart7407717,
        ["7407704"] = self.OnSubStart7407704,
        ["7407719"] = self.OnSubStart7407719,
        ["7407705"] = self.OnSubStart7407705,
        ["7407720"] = self.OnSubStart7407720,
        ["7407706"] = self.OnSubStart7407706,
        ["7407721"] = self.OnSubStart7407721
    }
end

function Quest74077:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7407701"] = self.OnSubFinish7407701,
        ["7407702"] = self.OnSubFinish7407702,
        ["7407703"] = self.OnSubFinish7407703,
        ["7407707"] = self.OnSubFinish7407707,
        ["7407718"] = self.OnSubFinish7407718,
        ["7407708"] = self.OnSubFinish7407708,
        ["7407709"] = self.OnSubFinish7407709,
        ["7407722"] = self.OnSubFinish7407722,
        ["7407723"] = self.OnSubFinish7407723,
        ["7407724"] = self.OnSubFinish7407724,
        ["7407725"] = self.OnSubFinish7407725,
        ["7407727"] = self.OnSubFinish7407727,
        ["7407726"] = self.OnSubFinish7407726,
        ["7407728"] = self.OnSubFinish7407728,
        ["7407710"] = self.OnSubFinish7407710,
        ["7407711"] = self.OnSubFinish7407711,
        ["7407712"] = self.OnSubFinish7407712,
        ["7407713"] = self.OnSubFinish7407713,
        ["7407714"] = self.OnSubFinish7407714,
        ["7407715"] = self.OnSubFinish7407715,
        ["7407716"] = self.OnSubFinish7407716,
        ["7407717"] = self.OnSubFinish7407717,
        ["7407704"] = self.OnSubFinish7407704,
        ["7407719"] = self.OnSubFinish7407719,
        ["7407705"] = self.OnSubFinish7407705,
        ["7407720"] = self.OnSubFinish7407720,
        ["7407706"] = self.OnSubFinish7407706,
        ["7407721"] = self.OnSubFinish7407721
    }
end

function Quest74077:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74077:Start()
    print("Start")
end

function Quest74077:OnDestroy()
    print("OnDestroy")
end

function Quest74077:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74077:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74077:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74077:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74077:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74077:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74077:OnSubStart7407701(arg1)
    print("OnSubStart7407701")
end

function Quest74077:OnSubFinish7407701(arg1)
    print("OnSubFinish7407701")
end

function Quest74077:OnSubStart7407702(arg1)
    print("OnSubStart7407702")
    actorMgr:CreateActorWithPos("Q74077Trigger_7407702FINISH", "Actor/Gadget/Q74077Trigger_7407702FINISH", 70900002, 0, {x = 2627.024, y = 605.816, z = 3655.916}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74077:OnSubFinish7407702(arg1)
    print("OnSubFinish7407702")
end

function Quest74077:OnSubStart7407703(arg1)
    print("OnSubStart7407703")
    actorMgr:CreateActorWithPos("Q74077Trigger_7407703FINISH", "Actor/Gadget/Q74077Trigger_7407703FINISH", 70900002, 0, {x = 2626.556, y = 569.252, z = 3654.69}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74077:OnSubFinish7407703(arg1)
    print("OnSubFinish7407703")
end

function Quest74077:OnSubStart7407707(arg1)
    print("OnSubStart7407707")
end

function Quest74077:OnSubFinish7407707(arg1)
    print("OnSubFinish7407707")
end

function Quest74077:OnSubStart7407718(arg1)
    print("OnSubStart7407718")
    actorMgr:CreateActorWithPos("Q74077Trigger_7407718FINISH", "Actor/Gadget/Q74077Trigger_7407718FINISH", 70900002, 0, {x = 2627.682, y = 484.937, z = 3656.002}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74077:OnSubFinish7407718(arg1)
    print("OnSubFinish7407718")
end

function Quest74077:OnSubStart7407708(arg1)
    print("OnSubStart7407708")
    actorMgr:CreateActorWithPos("Q74077Trigger_7407708FINISH", "Actor/Gadget/Q74077Trigger_7407708FINISH", 70900002, 0, {x = 2627.682, y = 484.937, z = 3656.002}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74077:OnSubFinish7407708(arg1)
    print("OnSubFinish7407708")
end

function Quest74077:OnSubStart7407709(arg1)
    print("OnSubStart7407709")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407709, 0, 25, 1)
end

function Quest74077:OnSubFinish7407709(arg1)
    print("OnSubFinish7407709")
end

function Quest74077:OnSubStart7407722(arg1)
    print("OnSubStart7407722")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
end

function Quest74077:OnSubFinish7407722(arg1)
    print("OnSubFinish7407722")
end

function Quest74077:OnSubStart7407723(arg1)
    print("OnSubStart7407723")
end

function Quest74077:OnSubFinish7407723(arg1)
    print("OnSubFinish7407723")
end

function Quest74077:OnSubStart7407724(arg1)
    print("OnSubStart7407724")
end

function Quest74077:OnSubFinish7407724(arg1)
    print("OnSubFinish7407724")
end

function Quest74077:OnSubStart7407725(arg1)
    print("OnSubStart7407725")
end

function Quest74077:OnSubFinish7407725(arg1)
    print("OnSubFinish7407725")
end

function Quest74077:OnSubStart7407727(arg1)
    print("OnSubStart7407727")
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest74077:OnSubFinish7407727(arg1)
    print("OnSubFinish7407727")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
    this:NpcDestroyWithBlackscreen(3, npcs.PaimonData.alias)
end

function Quest74077:OnSubStart7407726(arg1)
    print("OnSubStart7407726")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest74077:OnSubFinish7407726(arg1)
    print("OnSubFinish7407726")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21048Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5303Data.alias)
end

function Quest74077:OnSubStart7407728(arg1)
    print("OnSubStart7407728")
end

function Quest74077:OnSubFinish7407728(arg1)
    print("OnSubFinish7407728")
end

function Quest74077:OnSubStart7407710(arg1)
    print("OnSubStart7407710")
    actorMgr:CreateActorWithPos("Q74077Trigger_7407710FINISH", "Actor/Gadget/Q74077Trigger_7407710FINISH", 70900002, 0, {x = 2627.615, y = 460.3, z = 3656.052}, {x = 0.0, y = 58.739, z = 0.0}, true, false)
end

function Quest74077:OnSubFinish7407710(arg1)
    print("OnSubFinish7407710")
end

function Quest74077:OnSubStart7407711(arg1)
    print("OnSubStart7407711")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407711, 0, 15, 1)
end

function Quest74077:OnSubFinish7407711(arg1)
    print("OnSubFinish7407711")
end

function Quest74077:OnSubStart7407712(arg1)
    print("OnSubStart7407712")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21097Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
end

function Quest74077:OnSubFinish7407712(arg1)
    print("OnSubFinish7407712")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5303Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21097Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21172Data.alias)
end

function Quest74077:OnSubStart7407713(arg1)
    print("OnSubStart7407713")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7407713, function(arg1)
            actorUtils.FinishQuestID(false, 7407713)
        end, nil, nil, false)
    end)
end

function Quest74077:OnSubFinish7407713(arg1)
    print("OnSubFinish7407713")
end

function Quest74077:OnSubStart7407714(arg1)
    print("OnSubStart7407714")
end

function Quest74077:OnSubFinish7407714(arg1)
    print("OnSubFinish7407714")
end

function Quest74077:OnSubStart7407715(arg1)
    print("OnSubStart7407715")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7407715, function(arg1)
            actorUtils.FinishQuestID(false, 7407715)
        end, nil, nil, false)
    end)
end

function Quest74077:OnSubFinish7407715(arg1)
    print("OnSubFinish7407715")
end

function Quest74077:OnSubStart7407716(arg1)
    print("OnSubStart7407716")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7407716, 0, 25, 1)
end

function Quest74077:OnSubFinish7407716(arg1)
    print("OnSubFinish7407716")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.NarratorWithId, 1, nil, nil)
end

function Quest74077:OnSubStart7407717(arg1)
    print("OnSubStart7407717")
    this:NpcCreateWithNpcTrigger(npcs.Npc20995Data.id, 7407717, 0, 10)
end

function Quest74077:OnSubFinish7407717(arg1)
    print("OnSubFinish7407717")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20995Data.alias)
end

function Quest74077:OnSubStart7407704(arg1)
    print("OnSubStart7407704")
end

function Quest74077:OnSubFinish7407704(arg1)
    print("OnSubFinish7407704")
end

function Quest74077:OnSubStart7407719(arg1)
    print("OnSubStart7407719")
end

function Quest74077:OnSubFinish7407719(arg1)
    print("OnSubFinish7407719")
end

function Quest74077:OnSubStart7407705(arg1)
    print("OnSubStart7407705")
end

function Quest74077:OnSubFinish7407705(arg1)
    print("OnSubFinish7407705")
end

function Quest74077:OnSubStart7407720(arg1)
    print("OnSubStart7407720")
end

function Quest74077:OnSubFinish7407720(arg1)
    print("OnSubFinish7407720")
end

function Quest74077:OnSubStart7407706(arg1)
    print("OnSubStart7407706")
end

function Quest74077:OnSubFinish7407706(arg1)
    print("OnSubFinish7407706")
end

function Quest74077:OnSubStart7407721(arg1)
    print("OnSubStart7407721")
end

function Quest74077:OnSubFinish7407721(arg1)
    print("OnSubFinish7407721")
end

return Quest74077

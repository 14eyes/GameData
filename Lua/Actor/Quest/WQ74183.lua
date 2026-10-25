require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74183 = class("Quest74183", QuestActorProxy)
Quest74183.defaultAlias = "Quest74183"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74183:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74183:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7418301"] = self.OnSubStart7418301,
        ["7418302"] = self.OnSubStart7418302,
        ["7418303"] = self.OnSubStart7418303,
        ["7418304"] = self.OnSubStart7418304,
        ["7418307"] = self.OnSubStart7418307,
        ["7418305"] = self.OnSubStart7418305,
        ["7418309"] = self.OnSubStart7418309,
        ["7418312"] = self.OnSubStart7418312,
        ["7418306"] = self.OnSubStart7418306,
        ["7418313"] = self.OnSubStart7418313,
        ["7418311"] = self.OnSubStart7418311,
        ["7418310"] = self.OnSubStart7418310,
        ["7418308"] = self.OnSubStart7418308
    }
end

function Quest74183:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7418301"] = self.OnSubFinish7418301,
        ["7418302"] = self.OnSubFinish7418302,
        ["7418303"] = self.OnSubFinish7418303,
        ["7418304"] = self.OnSubFinish7418304,
        ["7418307"] = self.OnSubFinish7418307,
        ["7418305"] = self.OnSubFinish7418305,
        ["7418309"] = self.OnSubFinish7418309,
        ["7418312"] = self.OnSubFinish7418312,
        ["7418306"] = self.OnSubFinish7418306,
        ["7418313"] = self.OnSubFinish7418313,
        ["7418311"] = self.OnSubFinish7418311,
        ["7418310"] = self.OnSubFinish7418310,
        ["7418308"] = self.OnSubFinish7418308
    }
end

function Quest74183:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7418308"] = self.OnSubFailed7418308}
end

function Quest74183:Start()
    print("Start")
end

function Quest74183:OnDestroy()
    print("OnDestroy")
end

function Quest74183:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74183:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74183:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74183:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74183:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74183:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74183:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7418307)
    elseif arg1 == 5 then
        actorUtils.FinishQuestID(false, 7418312)
    end
end

function Quest74183:OnSubStart7418301(arg1)
    print("OnSubStart7418301")
    actorMgr:CreateActorWithPos("Q74183Trigger", "Actor/Gadget/Q74183Trigger", 70900002, 0, {x = 1340.29, y = 931.085, z = 4922.742}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74183:OnSubFinish7418301(arg1)
    print("OnSubFinish7418301")
end

function Quest74183:OnSubStart7418302(arg1)
    print("OnSubStart7418302")
    actorMgr:CreateActorWithPos("Q74183Trigger1", "Actor/Gadget/Q74183Trigger1", 70900002, 0, {x = 1396.297, y = 799.121, z = 4802.929}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74183:OnSubFinish7418302(arg1)
    print("OnSubFinish7418302")
end

function Quest74183:OnSubStart7418303(arg1)
    print("OnSubStart7418303")
    actorMgr:CreateActorWithPos("Q74183Trigger2", "Actor/Gadget/Q74183Trigger2", 70900002, 0, {x = 1679.143, y = 690.035, z = 4242.027}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74183:OnSubFinish7418303(arg1)
    print("OnSubFinish7418303")
end

function Quest74183:OnSubStart7418304(arg1)
    print("OnSubStart7418304")
    this:TransmitPlayerById(arg1, 2)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21430Data.id, 7418304, 0, 300, 1)
end

function Quest74183:OnSubFinish7418304(arg1)
    print("OnSubFinish7418304")
    this:SafeDestroyQuestNpc(npcs.Npc21430Data.alias, 11)
end

function Quest74183:OnSubStart7418307(arg1)
    print("OnSubStart7418307")
end

function Quest74183:OnSubFinish7418307(arg1)
    print("OnSubFinish7418307")
end

function Quest74183:OnSubStart7418305(arg1)
    print("OnSubStart7418305")
end

function Quest74183:OnSubFinish7418305(arg1)
    print("OnSubFinish7418305")
end

function Quest74183:OnSubStart7418309(arg1)
    print("OnSubStart7418309")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7418305, function(arg1)
            actorUtils.FinishQuestID(false, 7418309)
        end, nil, nil, false)
    end)
end

function Quest74183:OnSubFinish7418309(arg1)
    print("OnSubFinish7418309")
end

function Quest74183:OnSubStart7418312(arg1)
    print("OnSubStart7418312")
end

function Quest74183:OnSubFinish7418312(arg1)
    print("OnSubFinish7418312")
end

function Quest74183:OnSubStart7418306(arg1)
    print("OnSubStart7418306")
    this:QuestNarratorTask(datas.Narrator_74183)
    actorMgr:CreateActorWithPos("Q74183Trigger_NPC", "Actor/Gadget/Q74183Trigger_NPC", 70900002, 0, points.TPos_Q74183Trigger_NPC.pos, points.TPos_Q74183Trigger_NPC.rot, true, false, 11)
end

function Quest74183:OnSubFinish7418306(arg1)
    print("OnSubFinish7418306")
    this:NPCDestroyImmediately(npcs.Npc21354Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21430Data.alias, 11)
end

function Quest74183:OnSubStart7418313(arg1)
    print("OnSubStart7418313")
    actorMgr:CreateActorWithPos("Q74183Trigger6", "Actor/Gadget/Q74183Trigger6", 70900002, 0, points.TPos_Q74183Trigger6.pos, points.TPos_Q74183Trigger6.rot, true, false, 11)
end

function Quest74183:OnSubFinish7418313(arg1)
    print("OnSubFinish7418313")
end

function Quest74183:OnSubStart7418311(arg1)
    print("OnSubStart7418311")
    actorMgr:CreateActorWithPos("Q74183Trigger4", "Actor/Gadget/Q74183Trigger4", 70900002, 0, {x = 1560.101, y = 653.149, z = 4500.743}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74183:OnSubFinish7418311(arg1)
    print("OnSubFinish7418311")
end

function Quest74183:OnSubStart7418310(arg1)
    print("OnSubStart7418310")
end

function Quest74183:OnSubFinish7418310(arg1)
    print("OnSubFinish7418310")
end

function Quest74183:OnSubStart7418308(arg1)
    print("OnSubStart7418308")
    actorMgr:CreateActorWithPos("Q74183Trigger5", "Actor/Gadget/Q74183Trigger5", 70900002, 0, {x = 1450.791, y = 232.042, z = 3908.264}, {x = 0.0, y = 342.897, z = 0.0}, true, false, 11)
    this:ShowBlackScreenWithDialogText(0.5, 4, 0.5, nil, nil, nil, 0, false, true)
    actorMgr:CreateActorWithPos("Q74183Trigger_BlackScreen", "Actor/Gadget/Q74183Trigger_BlackScreen", 70900002, 0, {x = 1450.791, y = 232.042, z = 3903.563}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74183:OnSubFinish7418308(arg1)
    print("OnSubFinish7418308")
end

function Quest74183:OnSubFailed7418308(arg1)
    print("OnSubFailed7418308")
    this:TransmitPlayerWithDialogTextById(arg1, 5, datas.DialogsId_01, 3, nil, nil)
end

return Quest74183

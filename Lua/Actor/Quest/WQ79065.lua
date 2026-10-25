require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79065 = class("Quest79065", QuestActorProxy)
Quest79065.defaultAlias = "Quest79065"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79065:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79065:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7906501"] = self.OnSubStart7906501,
        ["7906517"] = self.OnSubStart7906517,
        ["7906506"] = self.OnSubStart7906506,
        ["7906508"] = self.OnSubStart7906508,
        ["7906509"] = self.OnSubStart7906509,
        ["7906518"] = self.OnSubStart7906518,
        ["7906510"] = self.OnSubStart7906510,
        ["7906511"] = self.OnSubStart7906511,
        ["7906512"] = self.OnSubStart7906512,
        ["7906519"] = self.OnSubStart7906519,
        ["7906520"] = self.OnSubStart7906520,
        ["7906522"] = self.OnSubStart7906522,
        ["7906521"] = self.OnSubStart7906521,
        ["7906502"] = self.OnSubStart7906502,
        ["7906507"] = self.OnSubStart7906507,
        ["7906514"] = self.OnSubStart7906514,
        ["7906515"] = self.OnSubStart7906515,
        ["7906503"] = self.OnSubStart7906503,
        ["7906523"] = self.OnSubStart7906523,
        ["7906504"] = self.OnSubStart7906504,
        ["7906516"] = self.OnSubStart7906516,
        ["7906505"] = self.OnSubStart7906505,
        ["7906513"] = self.OnSubStart7906513
    }
end

function Quest79065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7906501"] = self.OnSubFinish7906501,
        ["7906517"] = self.OnSubFinish7906517,
        ["7906506"] = self.OnSubFinish7906506,
        ["7906508"] = self.OnSubFinish7906508,
        ["7906509"] = self.OnSubFinish7906509,
        ["7906518"] = self.OnSubFinish7906518,
        ["7906510"] = self.OnSubFinish7906510,
        ["7906511"] = self.OnSubFinish7906511,
        ["7906512"] = self.OnSubFinish7906512,
        ["7906519"] = self.OnSubFinish7906519,
        ["7906520"] = self.OnSubFinish7906520,
        ["7906522"] = self.OnSubFinish7906522,
        ["7906521"] = self.OnSubFinish7906521,
        ["7906502"] = self.OnSubFinish7906502,
        ["7906507"] = self.OnSubFinish7906507,
        ["7906514"] = self.OnSubFinish7906514,
        ["7906515"] = self.OnSubFinish7906515,
        ["7906503"] = self.OnSubFinish7906503,
        ["7906523"] = self.OnSubFinish7906523,
        ["7906504"] = self.OnSubFinish7906504,
        ["7906516"] = self.OnSubFinish7906516,
        ["7906505"] = self.OnSubFinish7906505,
        ["7906513"] = self.OnSubFinish7906513
    }
end

function Quest79065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79065:Start()
    print("Start")
end

function Quest79065:OnDestroy()
    print("OnDestroy")
end

function Quest79065:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79065:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79065:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79065:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest79065:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest79065:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest79065:OnSubStart7906501(arg1)
    print("OnSubStart7906501")
    this:CreateQuestNpc(arg1, npcs.Npc21466Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21467Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21469Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21508Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21509Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21510Data_01.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21511Data_01.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q79065Trigger", "Actor/Gadget/Q79065Trigger", 70900002, 0, {x = -224.769, y = 521.9, z = -557.332}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 100)
end

function Quest79065:OnSubFinish7906501(arg1)
    print("OnSubFinish7906501")
end

function Quest79065:OnSubStart7906517(arg1)
    print("OnSubStart7906517")
end

function Quest79065:OnSubFinish7906517(arg1)
    print("OnSubFinish7906517")
end

function Quest79065:OnSubStart7906506(arg1)
    print("OnSubStart7906506")
    this:CreateQuestNpc(arg1, npcs.Npc21508Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21510Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21511Data.id, 0, false, 0)
end

function Quest79065:OnSubFinish7906506(arg1)
    print("OnSubFinish7906506")
    this:SafeDestroyQuestNpc(npcs.Npc21508Data.alias, 100)
end

function Quest79065:OnSubStart7906508(arg1)
    print("OnSubStart7906508")
end

function Quest79065:OnSubFinish7906508(arg1)
    print("OnSubFinish7906508")
end

function Quest79065:OnSubStart7906509(arg1)
    print("OnSubStart7906509")
    this:CreateQuestNpc(arg1, npcs.Npc21508Data.id, 0, false, 0)
end

function Quest79065:OnSubFinish7906509(arg1)
    print("OnSubFinish7906509")
end

function Quest79065:OnSubStart7906518(arg1)
    print("OnSubStart7906518")
end

function Quest79065:OnSubFinish7906518(arg1)
    print("OnSubFinish7906518")
end

function Quest79065:OnSubStart7906510(arg1)
    print("OnSubStart7906510")
    this:CreateQuestNpc(arg1, npcs.Npc21509Data.id, 0, false, 0)
end

function Quest79065:OnSubFinish7906510(arg1)
    print("OnSubFinish7906510")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21509Data.alias)
end

function Quest79065:OnSubStart7906511(arg1)
    print("OnSubStart7906511")
end

function Quest79065:OnSubFinish7906511(arg1)
    print("OnSubFinish7906511")
end

function Quest79065:OnSubStart7906512(arg1)
    print("OnSubStart7906512")
    this:CreateQuestNpc(arg1, npcs.Npc21509Data.id, 0, false, 0)
end

function Quest79065:OnSubFinish7906512(arg1)
    print("OnSubFinish7906512")
end

function Quest79065:OnSubStart7906519(arg1)
    print("OnSubStart7906519")
end

function Quest79065:OnSubFinish7906519(arg1)
    print("OnSubFinish7906519")
end

function Quest79065:OnSubStart7906520(arg1)
    print("OnSubStart7906520")
    this:CreateQuestNpc(arg1, npcs.Npc21508Data.id, 0, false, 0)
end

function Quest79065:OnSubFinish7906520(arg1)
    print("OnSubFinish7906520")
    this:SafeDestroyQuestNpc(npcs.Npc21508Data.alias, 100)
end

function Quest79065:OnSubStart7906522(arg1)
    print("OnSubStart7906522")
end

function Quest79065:OnSubFinish7906522(arg1)
    print("OnSubFinish7906522")
end

function Quest79065:OnSubStart7906521(arg1)
    print("OnSubStart7906521")
end

function Quest79065:OnSubFinish7906521(arg1)
    print("OnSubFinish7906521")
end

function Quest79065:OnSubStart7906502(arg1)
    print("OnSubStart7906502")
    this:CreateQuestNpc(arg1, npcs.Npc21466Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21467Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q79065Trigger1", "Actor/Gadget/Q79065Trigger1", 70900002, 0, {x = -237.136, y = 519.295, z = -553.509}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 100)
end

function Quest79065:OnSubFinish7906502(arg1)
    print("OnSubFinish7906502")
end

function Quest79065:OnSubStart7906507(arg1)
    print("OnSubStart7906507")
    this:CreateQuestNpc(arg1, npcs.Npc21466Data.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21467Data.id, 7906507, 0, 6)
    this:NpcCreateWithNpcTrigger(npcs.Npc21469Data.id, 7906507, 0, 6)
end

function Quest79065:OnSubFinish7906507(arg1)
    print("OnSubFinish7906507")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21467Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21469Data.alias)
end

function Quest79065:OnSubStart7906514(arg1)
    print("OnSubStart7906514")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc21466Data.id, 7906514, 0, 4)
    end)
end

function Quest79065:OnSubFinish7906514(arg1)
    print("OnSubFinish7906514")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21466Data.alias)
end

function Quest79065:OnSubStart7906515(arg1)
    print("OnSubStart7906515")
end

function Quest79065:OnSubFinish7906515(arg1)
    print("OnSubFinish7906515")
end

function Quest79065:OnSubStart7906503(arg1)
    print("OnSubStart7906503")
    this:NpcCreateWithNpcTrigger(npcs.Npc21466Data.id, 7906503, 0, 5)
end

function Quest79065:OnSubFinish7906503(arg1)
    print("OnSubFinish7906503")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21466Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21508Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21509Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21510Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21511Data.alias)
end

function Quest79065:OnSubStart7906523(arg1)
    print("OnSubStart7906523")
end

function Quest79065:OnSubFinish7906523(arg1)
    print("OnSubFinish7906523")
end

function Quest79065:OnSubStart7906504(arg1)
    print("OnSubStart7906504")
end

function Quest79065:OnSubFinish7906504(arg1)
    print("OnSubFinish7906504")
end

function Quest79065:OnSubStart7906516(arg1)
    print("OnSubStart7906516")
    this:PlayCutsceneIndex(7906516, function(arg1)
        actorUtils.FinishQuestID(false, 7906516)
    end, nil, nil, false)
end

function Quest79065:OnSubFinish7906516(arg1)
    print("OnSubFinish7906516")
end

function Quest79065:OnSubStart7906505(arg1)
    print("OnSubStart7906505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21466Data.id, 7906505, 0, 70, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21467Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21468Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21469Data.id, 0, false, 0)
end

function Quest79065:OnSubFinish7906505(arg1)
    print("OnSubFinish7906505")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21466Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21467Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21468Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21469Data.alias)
end

function Quest79065:OnSubStart7906513(arg1)
    print("OnSubStart7906513")
end

function Quest79065:OnSubFinish7906513(arg1)
    print("OnSubFinish7906513")
end

return Quest79065

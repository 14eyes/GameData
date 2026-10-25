require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74018 = class("Quest74018", QuestActorProxy)
Quest74018.defaultAlias = "Quest74018"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74018:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7401801"] = self.OnSubStart7401801,
        ["7401802"] = self.OnSubStart7401802,
        ["7401803"] = self.OnSubStart7401803,
        ["7401806"] = self.OnSubStart7401806,
        ["7401832"] = self.OnSubStart7401832,
        ["7401804"] = self.OnSubStart7401804,
        ["7401805"] = self.OnSubStart7401805,
        ["7401807"] = self.OnSubStart7401807,
        ["7401833"] = self.OnSubStart7401833,
        ["7401809"] = self.OnSubStart7401809,
        ["7401811"] = self.OnSubStart7401811,
        ["7401812"] = self.OnSubStart7401812,
        ["7401813"] = self.OnSubStart7401813,
        ["7401814"] = self.OnSubStart7401814,
        ["7401815"] = self.OnSubStart7401815,
        ["7401816"] = self.OnSubStart7401816,
        ["7401824"] = self.OnSubStart7401824,
        ["7401818"] = self.OnSubStart7401818,
        ["7401819"] = self.OnSubStart7401819,
        ["7401820"] = self.OnSubStart7401820,
        ["7401821"] = self.OnSubStart7401821,
        ["7401822"] = self.OnSubStart7401822,
        ["7401825"] = self.OnSubStart7401825,
        ["7401834"] = self.OnSubStart7401834,
        ["7401826"] = self.OnSubStart7401826,
        ["7401823"] = self.OnSubStart7401823,
        ["7401835"] = self.OnSubStart7401835,
        ["7401836"] = self.OnSubStart7401836,
        ["7401828"] = self.OnSubStart7401828,
        ["7401829"] = self.OnSubStart7401829,
        ["7401808"] = self.OnSubStart7401808,
        ["7401810"] = self.OnSubStart7401810,
        ["7401817"] = self.OnSubStart7401817,
        ["7401827"] = self.OnSubStart7401827,
        ["7401830"] = self.OnSubStart7401830,
        ["7401831"] = self.OnSubStart7401831
    }
end

function Quest74018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7401801"] = self.OnSubFinish7401801,
        ["7401802"] = self.OnSubFinish7401802,
        ["7401803"] = self.OnSubFinish7401803,
        ["7401806"] = self.OnSubFinish7401806,
        ["7401832"] = self.OnSubFinish7401832,
        ["7401804"] = self.OnSubFinish7401804,
        ["7401805"] = self.OnSubFinish7401805,
        ["7401807"] = self.OnSubFinish7401807,
        ["7401833"] = self.OnSubFinish7401833,
        ["7401809"] = self.OnSubFinish7401809,
        ["7401811"] = self.OnSubFinish7401811,
        ["7401812"] = self.OnSubFinish7401812,
        ["7401813"] = self.OnSubFinish7401813,
        ["7401814"] = self.OnSubFinish7401814,
        ["7401815"] = self.OnSubFinish7401815,
        ["7401816"] = self.OnSubFinish7401816,
        ["7401824"] = self.OnSubFinish7401824,
        ["7401818"] = self.OnSubFinish7401818,
        ["7401819"] = self.OnSubFinish7401819,
        ["7401820"] = self.OnSubFinish7401820,
        ["7401821"] = self.OnSubFinish7401821,
        ["7401822"] = self.OnSubFinish7401822,
        ["7401825"] = self.OnSubFinish7401825,
        ["7401834"] = self.OnSubFinish7401834,
        ["7401826"] = self.OnSubFinish7401826,
        ["7401823"] = self.OnSubFinish7401823,
        ["7401835"] = self.OnSubFinish7401835,
        ["7401836"] = self.OnSubFinish7401836,
        ["7401828"] = self.OnSubFinish7401828,
        ["7401829"] = self.OnSubFinish7401829,
        ["7401808"] = self.OnSubFinish7401808,
        ["7401810"] = self.OnSubFinish7401810,
        ["7401817"] = self.OnSubFinish7401817,
        ["7401827"] = self.OnSubFinish7401827,
        ["7401830"] = self.OnSubFinish7401830,
        ["7401831"] = self.OnSubFinish7401831
    }
end

function Quest74018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74018:Start()
    print("Start")
end

function Quest74018:OnDestroy()
    print("OnDestroy")
end

function Quest74018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74018:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc21039Data.alias, 3)
end

function Quest74018:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74018:OnSubStart7401801(arg1)
    print("OnSubStart7401801")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21039Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21089Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21089Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21090Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21090Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7401801Trigger", "Actor/Gadget/Q7401801Trigger", 70900002, 0, {x = 4326.579, y = 570.528, z = 3570.828}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74018:OnSubFinish7401801(arg1)
    print("OnSubFinish7401801")
    self:SetNavigationByMainId(74018, true)
    this:SafeDestroyQuestNpc(npcs.Npc21089Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21090Data.alias, 3)
end

function Quest74018:OnSubStart7401802(arg1)
    print("OnSubStart7401802")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21039Data.alias):SitOnChair(8010, true)
end

function Quest74018:OnSubFinish7401802(arg1)
    print("OnSubFinish7401802")
end

function Quest74018:OnSubStart7401803(arg1)
    print("OnSubStart7401803")
    this:GetQuestNpcActor(npcs.Npc21039Data.alias):SitOnChair(8010, true)
end

function Quest74018:OnSubFinish7401803(arg1)
    print("OnSubFinish7401803")
    this:SafeDestroyQuestNpc(npcs.Npc21039Data.alias, 3)
end

function Quest74018:OnSubStart7401806(arg1)
    print("OnSubStart7401806")
end

function Quest74018:OnSubFinish7401806(arg1)
    print("OnSubFinish7401806")
end

function Quest74018:OnSubStart7401832(arg1)
    print("OnSubStart7401832")
    this:CreateQuestNpc(arg1, npcs.Npc21041Data.id, 0)
end

function Quest74018:OnSubFinish7401832(arg1)
    print("OnSubFinish7401832")
end

function Quest74018:OnSubStart7401804(arg1)
    print("OnSubStart7401804")
end

function Quest74018:OnSubFinish7401804(arg1)
    print("OnSubFinish7401804")
    this:SafeDestroyQuestNpc(npcs.Npc21041Data.alias, 3)
end

function Quest74018:OnSubStart7401805(arg1)
    print("OnSubStart7401805")
    this:CreateQuestNpc(arg1, npcs.Npc21041Data.id, 0)
end

function Quest74018:OnSubFinish7401805(arg1)
    print("OnSubFinish7401805")
end

function Quest74018:OnSubStart7401807(arg1)
    print("OnSubStart7401807")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21039Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest74018:OnSubFinish7401807(arg1)
    print("OnSubFinish7401807")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74018:OnSubStart7401833(arg1)
    print("OnSubStart7401833")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21039Data.alias):DoFreeStateTrigger()
end

function Quest74018:OnSubFinish7401833(arg1)
    print("OnSubFinish7401833")
    this:SafeDestroyQuestNpc(npcs.Npc21039Data.alias, 3)
end

function Quest74018:OnSubStart7401809(arg1)
    print("OnSubStart7401809")
end

function Quest74018:OnSubFinish7401809(arg1)
    print("OnSubFinish7401809")
    this:SafeDestroyQuestNpc(npcs.Npc21041Data.alias, 3)
end

function Quest74018:OnSubStart7401811(arg1)
    print("OnSubStart7401811")
    this:CreateQuestNpc(arg1, npcs.Npc21042Data.id, 0)
end

function Quest74018:OnSubFinish7401811(arg1)
    print("OnSubFinish7401811")
end

function Quest74018:OnSubStart7401812(arg1)
    print("OnSubStart7401812")
    this:RequestInteraction(npcs.Npc21042Data.alias)
end

function Quest74018:OnSubFinish7401812(arg1)
    print("OnSubFinish7401812")
end

function Quest74018:OnSubStart7401813(arg1)
    print("OnSubStart7401813")
    this:CreateQuestNpc(arg1, npcs.Npc21088Data.id, 0)
end

function Quest74018:OnSubFinish7401813(arg1)
    print("OnSubFinish7401813")
    this:SafeDestroyQuestNpc(npcs.Npc21088Data.alias, 3)
end

function Quest74018:OnSubStart7401814(arg1)
    print("OnSubStart7401814")
    this:RequestInteraction(npcs.Npc21042Data.alias)
end

function Quest74018:OnSubFinish7401814(arg1)
    print("OnSubFinish7401814")
end

function Quest74018:OnSubStart7401815(arg1)
    print("OnSubStart7401815")
end

function Quest74018:OnSubFinish7401815(arg1)
    print("OnSubFinish7401815")
end

function Quest74018:OnSubStart7401816(arg1)
    print("OnSubStart7401816")
end

function Quest74018:OnSubFinish7401816(arg1)
    print("OnSubFinish7401816")
    this:SafeDestroyQuestNpc(npcs.Npc21042Data.alias, 3)
end

function Quest74018:OnSubStart7401824(arg1)
    print("OnSubStart7401824")
end

function Quest74018:OnSubFinish7401824(arg1)
    print("OnSubFinish7401824")
end

function Quest74018:OnSubStart7401818(arg1)
    print("OnSubStart7401818")
    this:CreateQuestNpc(arg1, npcs.Npc21041Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21042Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21040Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21040Data.alias):DoFreeStyle(1280, true, nil, true, true, false, true)
end

function Quest74018:OnSubFinish7401818(arg1)
    print("OnSubFinish7401818")
    this:SafeDestroyQuestNpc(npcs.Npc21041Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21042Data.alias, 3)
end

function Quest74018:OnSubStart7401819(arg1)
    print("OnSubStart7401819")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:CreateQuestNpcWithTrigger("Q7401819Trigger", 7401819, npcs.Npc21040Data.id, 2, 20)
end

function Quest74018:OnSubFinish7401819(arg1)
    print("OnSubFinish7401819")
    this:SafeDestroyQuestNpc(npcs.Npc21040Data.alias, 3)
end

function Quest74018:OnSubStart7401820(arg1)
    print("OnSubStart7401820")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21039Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest74018:OnSubFinish7401820(arg1)
    print("OnSubFinish7401820")
end

function Quest74018:OnSubStart7401821(arg1)
    print("OnSubStart7401821")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:CreateQuestNpcWithTrigger("Q7401821Trigger", 7401821, npcs.Npc21040Data.id, 2, 15)
end

function Quest74018:OnSubFinish7401821(arg1)
    print("OnSubFinish7401821")
    this:SafeDestroyQuestNpc(npcs.Npc21039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21040Data.alias, 3)
end

function Quest74018:OnSubStart7401822(arg1)
    print("OnSubStart7401822")
    actorMgr:CreateActorWithPos("Q7401820Trigger", "Actor/Gadget/Q7401820Trigger", 70900002, 0, points.TPos_Q7401820Trigger.pos, points.TPos_Q7401820Trigger.rot, true, false, 3)
end

function Quest74018:OnSubFinish7401822(arg1)
    print("OnSubFinish7401822")
end

function Quest74018:OnSubStart7401825(arg1)
    print("OnSubStart7401825")
end

function Quest74018:OnSubFinish7401825(arg1)
    print("OnSubFinish7401825")
end

function Quest74018:OnSubStart7401834(arg1)
    print("OnSubStart7401834")
    this:CreateQuestNpc(arg1, npcs.Npc21040Data.id, 0)
    this:CreateQuestNpcWithTriggerBlackEx("Q7401834Trigger", 7401834, 21039, 1, 40, 0.5, 1, 0.5, 1)
end

function Quest74018:OnSubFinish7401834(arg1)
    print("OnSubFinish7401834")
    this:SafeDestroyQuestNpc(npcs.Npc21039Data.alias, 3)
end

function Quest74018:OnSubStart7401826(arg1)
    print("OnSubStart7401826")
end

function Quest74018:OnSubFinish7401826(arg1)
    print("OnSubFinish7401826")
end

function Quest74018:OnSubStart7401823(arg1)
    print("OnSubStart7401823")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:CreateQuestNpcWithTrigger("Q7401823Trigger", 7401823, npcs.Npc21040Data.id, 2, 15)
end

function Quest74018:OnSubFinish7401823(arg1)
    print("OnSubFinish7401823")
    this:SafeDestroyQuestNpc(npcs.Npc21040Data.alias, 3)
end

function Quest74018:OnSubStart7401835(arg1)
    print("OnSubStart7401835")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
end

function Quest74018:OnSubFinish7401835(arg1)
    print("OnSubFinish7401835")
    this:SafeDestroyQuestNpc(npcs.Npc21039Data.alias, 3)
end

function Quest74018:OnSubStart7401836(arg1)
    print("OnSubStart7401836")
    this:CreateQuestNpc(arg1, npcs.Npc21089Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21089Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21090Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21090Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateSpeechBubbleTask(npcs.Npc21089Data.id, 740182301, 5, true, 6, 8)
    this:CreateSpeechBubbleTask(npcs.Npc21089Data.id, 740182303, 5, true, 6, 8)
    this:CreateSpeechBubbleTask(npcs.Npc21090Data.id, 740182302, 5, true, 6, 8)
    this:CreateSpeechBubbleTask(npcs.Npc21090Data.id, 740182304, 5, true, 6, 8)
    actorMgr:CreateActorWithPos("Q7401836Trigger", "Actor/Gadget/Q7401836Trigger", 70900002, 0, {x = 4284.543, y = 570.6, z = 3482.239}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74018:OnSubFinish7401836(arg1)
    print("OnSubFinish7401836")
end

function Quest74018:OnSubStart7401828(arg1)
    print("OnSubStart7401828")
end

function Quest74018:OnSubFinish7401828(arg1)
    print("OnSubFinish7401828")
    this:ClearSpeechBubbleTask()
    this:SafeDestroyQuestNpc(npcs.Npc21089Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21090Data.alias, 3)
end

function Quest74018:OnSubStart7401829(arg1)
    print("OnSubStart7401829")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:CreateQuestNpcWithTrigger("Q7401829Trigger", 7401829, npcs.Npc21040Data.id, 2, 40)
end

function Quest74018:OnSubFinish7401829(arg1)
    print("OnSubFinish7401829")
end

function Quest74018:OnSubStart7401808(arg1)
    print("OnSubStart7401808")
    actorMgr:CreateActorWithPos("Q7401807Trigger", "Actor/Gadget/Q7401807Trigger", 70900002, 0, {x = 4252.077, y = 578.415, z = 3539.702}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74018:OnSubFinish7401808(arg1)
    print("OnSubFinish7401808")
end

function Quest74018:OnSubStart7401810(arg1)
    print("OnSubStart7401810")
end

function Quest74018:OnSubFinish7401810(arg1)
    print("OnSubFinish7401810")
end

function Quest74018:OnSubStart7401817(arg1)
    print("OnSubStart7401817")
end

function Quest74018:OnSubFinish7401817(arg1)
    print("OnSubFinish7401817")
end

function Quest74018:OnSubStart7401827(arg1)
    print("OnSubStart7401827")
    this:CreateQuestNpc(arg1, npcs.Npc21039Data.id, 0)
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21040Data.id, 0)
end

function Quest74018:OnSubFinish7401827(arg1)
    print("OnSubFinish7401827")
    this:SafeDestroyQuestNpc(npcs.Npc21039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21040Data.alias, 3)
end

function Quest74018:OnSubStart7401830(arg1)
    print("OnSubStart7401830")
end

function Quest74018:OnSubFinish7401830(arg1)
    print("OnSubFinish7401830")
end

function Quest74018:OnSubStart7401831(arg1)
    print("OnSubStart7401831")
end

function Quest74018:OnSubFinish7401831(arg1)
    print("OnSubFinish7401831")
    this:SafeDestroyQuestNpc(npcs.Npc21039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21040Data.alias, 3)
end

return Quest74018

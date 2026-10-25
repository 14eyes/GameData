require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5022 = class("Quest5022", QuestActorProxy)
Quest5022.defaultAlias = "Quest5022"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5022:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["502201"] = self.OnSubStart502201,
        ["502203"] = self.OnSubStart502203,
        ["502205"] = self.OnSubStart502205,
        ["502204"] = self.OnSubStart502204,
        ["502206"] = self.OnSubStart502206,
        ["502207"] = self.OnSubStart502207,
        ["502209"] = self.OnSubStart502209,
        ["502208"] = self.OnSubStart502208,
        ["502202"] = self.OnSubStart502202
    }
end

function Quest5022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["502201"] = self.OnSubFinish502201,
        ["502203"] = self.OnSubFinish502203,
        ["502205"] = self.OnSubFinish502205,
        ["502204"] = self.OnSubFinish502204,
        ["502206"] = self.OnSubFinish502206,
        ["502207"] = self.OnSubFinish502207,
        ["502209"] = self.OnSubFinish502209,
        ["502208"] = self.OnSubFinish502208,
        ["502202"] = self.OnSubFinish502202
    }
end

function Quest5022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["502204"] = self.OnSubFailed502204,
        ["502206"] = self.OnSubFailed502206,
        ["502207"] = self.OnSubFailed502207
    }
end

function Quest5022:Start()
    print("Start")
end

function Quest5022:OnDestroy()
    print("OnDestroy")
end

function Quest5022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest5022:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5022:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest5022:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5022:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5022:OnSubStart502201(arg1)
    print("OnSubStart502201")
end

function Quest5022:OnSubFinish502201(arg1)
    print("OnSubFinish502201")
    this:QuestNarratorTask(datas.NarratorWithId50229901, nil)
end

function Quest5022:OnSubStart502203(arg1)
    print("OnSubStart502203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(502203, 0, 5, 2, npcs.Npc14565.id)
    this:ActorDestroy("Q502205Trigger")
    this:CancelStoryByQuest(110502201)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14673.alias, 3)
    this:ActorDestroy("Q502206Trigger01")
    this:ActorDestroy("Q502206Trigger02")
    this:ActorDestroy("Q502206Trigger3")
    this:ActorDestroy("Q502206Trigger4")
    this:DestroyNpcTrigger("Q502207N14235Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc14566.alias, 3)
    this:DestroyNpcTrigger("Q502204N14566Trigger")
    this:ActorDestroy("Q502204Trigger")
end

function Quest5022:OnSubFinish502203(arg1)
    print("OnSubFinish502203")
    this:NpcDestroyImmediately(1099, npcs.Npc14565.alias)
    this:ClearNarratorTask()
    this:TransmitPlayerWithQuestIdByData(502205, 1, datas.TransmitData, nil, nil, nil)
end

function Quest5022:OnSubStart502205(arg1)
    print("OnSubStart502205")
    actorMgr:CreateActorWithPos("Q502205Trigger", "Actor/Gadget/Q502205Trigger", 70900002, 0, points._Q502205TriggerPoint_.pos, points._Q502205TriggerPoint_.rot, true, false, 1099)
    actorMgr:CreateActorWithPos("Q502204Trigger", "Actor/Gadget/Q502204Trigger", 70900002, 0, points._Q502204TriggerPoint_.pos, points._Q502204TriggerPoint_.rot, true, false, 3)
end

function Quest5022:OnSubFinish502205(arg1)
    print("OnSubFinish502205")
end

function Quest5022:OnSubStart502204(arg1)
    print("OnSubStart502204")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc14566.id, 0, 502204, 10, true)
    this:DeployStoryByQuest(110502201)
    actorMgr:CreateActorWithPos("Q502205Trigger", "Actor/Gadget/Q502205Trigger", 70900002, 0, points._Q502205TriggerPoint_.pos, points._Q502205TriggerPoint_.rot, true, false, 1099)
end

function Quest5022:OnSubFinish502204(arg1)
    print("OnSubFinish502204")
    this:SafeDestroyQuestNpc(npcs.Npc14566.alias, 3)
end

function Quest5022:OnSubFailed502204(arg1)
    print("OnSubFailed502204")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14673.alias, 3)
    this:ActorDestroy("Q502206Trigger01")
    this:ActorDestroy("Q502206Trigger02")
    this:ActorDestroy("Q502206Trigger3")
    this:ActorDestroy("Q502206Trigger4")
    this:DestroyNpcTrigger("Q502207N14235Trigger")
    this:CancelStoryByQuest(110502201)
    this:ActorDestroy("Q502205Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc14566.alias, 3)
    this:DestroyNpcTrigger("Q502204N14566Trigger")
    this:ActorDestroy("Q502204Trigger")
end

function Quest5022:OnSubStart502206(arg1)
    print("OnSubStart502206")
    actorMgr:CreateActorWithPos("Q502206Trigger01", "Actor/Gadget/Q502206Trigger01", 70900002, 0, points._Q502206Trigger01Point_.pos, points._Q502206Trigger01Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q502206Trigger02", "Actor/Gadget/Q502206Trigger02", 70900002, 0, points._Q502206Trigger02Point_.pos, points._Q502206Trigger02Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q502206Trigger3", "Actor/Gadget/Q502206Trigger3", 70900002, 0, points._Q502206Trigger3Point_.pos, points._Q502206Trigger3Point_.rot, true, false, 3)
    this:DeployStoryByQuest(110502201)
    actorMgr:CreateActorWithPos("Q502206Trigger4", "Actor/Gadget/Q502206Trigger4", 70900002, 0, points._Q502206Trigger4Point_.pos, points._Q502206Trigger4Point_.rot, true, false, 3)
end

function Quest5022:OnSubFinish502206(arg1)
    print("OnSubFinish502206")
    this:ActorDestroy("Q502206Trigger01")
    this:ActorDestroy("Q502206Trigger02")
    this:ActorDestroy("Q502206Trigger3")
    this:ActorDestroy("Q502206Trigger4")
end

function Quest5022:OnSubFailed502206(arg1)
    print("OnSubFailed502206")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14673.alias, 3)
    this:ActorDestroy("Q502206Trigger01")
    this:ActorDestroy("Q502206Trigger02")
    this:ActorDestroy("Q502206Trigger3")
    this:ActorDestroy("Q502206Trigger4")
    this:DestroyNpcTrigger("Q502207N14235Trigger")
    this:CancelStoryByQuest(110502201)
    this:ActorDestroy("Q502205Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc14566.alias, 3)
    this:DestroyNpcTrigger("Q502204N14566Trigger")
    this:ActorDestroy("Q502204Trigger")
end

function Quest5022:OnSubStart502207(arg1)
    print("OnSubStart502207")
    this:NpcCreateWithNpcTrigger(npcs.Npc14235.id, 0, 40, 502207)
    this:CreateQuestNpc(arg1, npcs.Npc14673.id, 0, false, 0)
    this:DeployStoryByQuest(110502201)
    actorMgr:CreateActorWithPos("Q502205Trigger", "Actor/Gadget/Q502205Trigger", 70900002, 0, points._Q502205TriggerPoint_.pos, points._Q502205TriggerPoint_.rot, true, false, 1099)
end

function Quest5022:OnSubFinish502207(arg1)
    print("OnSubFinish502207")
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14673.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14836.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14837.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14839.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14838.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14840.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14841.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14843.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14842.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14844.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14846.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14845.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14628.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14627.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14629.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14630.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14860.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14861.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14862.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14863.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14864.alias, 3)
    this:CancelStoryByQuest(110502201)
    this:ClearNarratorTask()
    this:ActorDestroy("Q502205Trigger")
    this:ActionSafeCall(function(arg1)
        this:TransmitPlayerWithQuestIdByData(502207, 4, datas.TransmitData_4, nil, nil, nil)
    end)
end

function Quest5022:OnSubFailed502207(arg1)
    print("OnSubFailed502207")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14673.alias, 3)
    this:ActorDestroy("Q502206Trigger01")
    this:ActorDestroy("Q502206Trigger02")
    this:ActorDestroy("Q502206Trigger3")
    this:ActorDestroy("Q502206Trigger4")
    this:DestroyNpcTrigger("Q502207N14235Trigger")
    this:CancelStoryByQuest(110502201)
    this:ActorDestroy("Q502205Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc14566.alias, 3)
    this:DestroyNpcTrigger("Q502204N14566Trigger")
    this:ActorDestroy("Q502204Trigger")
end

function Quest5022:OnSubStart502209(arg1)
    print("OnSubStart502209")
    actorMgr:CreateActorWithPos("Q502209trigger", "Actor/Gadget/Q502209trigger", 70900002, 0, points._Q502209triggerPoint_.pos, points._Q502209triggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q502210trigger", "Actor/Gadget/Q502210trigger", 70900002, 0, points._Q502210triggerPoint_.pos, points._Q502210triggerPoint_.rot, true, false, 1099)
end

function Quest5022:OnSubFinish502209(arg1)
    print("OnSubFinish502209")
    this:ActorDestroy("Q502209trigger")
    this:ActorDestroy("Q502210trigger")
end

function Quest5022:OnSubStart502208(arg1)
    print("OnSubStart502208")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc14565.id, 0, 502208, 5, true)
end

function Quest5022:OnSubFinish502208(arg1)
    print("OnSubFinish502208")
    this:SafeDestroyQuestNpc(npcs.Npc14565.alias, 1099)
end

function Quest5022:OnSubStart502202(arg1)
    print("OnSubStart502202")
end

function Quest5022:OnSubFinish502202(arg1)
    print("OnSubFinish502202")
end

return Quest5022

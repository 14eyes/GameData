require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4018 = class("Quest4018", QuestActorProxy)
Quest4018.defaultAlias = "Quest4018"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4018:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["401801"] = self.OnSubStart401801,
        ["401802"] = self.OnSubStart401802,
        ["401805"] = self.OnSubStart401805,
        ["401813"] = self.OnSubStart401813,
        ["401811"] = self.OnSubStart401811,
        ["401812"] = self.OnSubStart401812,
        ["401814"] = self.OnSubStart401814,
        ["401803"] = self.OnSubStart401803,
        ["401806"] = self.OnSubStart401806,
        ["401807"] = self.OnSubStart401807,
        ["401816"] = self.OnSubStart401816,
        ["401804"] = self.OnSubStart401804,
        ["401815"] = self.OnSubStart401815,
        ["401809"] = self.OnSubStart401809,
        ["401808"] = self.OnSubStart401808,
        ["401810"] = self.OnSubStart401810
    }
end

function Quest4018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["401801"] = self.OnSubFinish401801,
        ["401802"] = self.OnSubFinish401802,
        ["401805"] = self.OnSubFinish401805,
        ["401813"] = self.OnSubFinish401813,
        ["401811"] = self.OnSubFinish401811,
        ["401812"] = self.OnSubFinish401812,
        ["401814"] = self.OnSubFinish401814,
        ["401803"] = self.OnSubFinish401803,
        ["401806"] = self.OnSubFinish401806,
        ["401807"] = self.OnSubFinish401807,
        ["401816"] = self.OnSubFinish401816,
        ["401804"] = self.OnSubFinish401804,
        ["401815"] = self.OnSubFinish401815,
        ["401809"] = self.OnSubFinish401809,
        ["401808"] = self.OnSubFinish401808,
        ["401810"] = self.OnSubFinish401810
    }
end

function Quest4018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["401815"] = self.OnSubFailed401815, ["401808"] = self.OnSubFailed401808}
end

function Quest4018:Start()
    print("Start")
end

function Quest4018:OnDestroy()
    print("OnDestroy")
end

function Quest4018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4018:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4018:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4018:OnSubStart401801(arg1)
    print("OnSubStart401801")
    this:CreateQuestNpc(arg1, npcs.Npc13512Data.id, 0)
    actorMgr:CreateActorWithPos("Q401801Trigger", "Actor/Gadget/Q401801Trigger", 70900002, 0, points.TPos_Q401801Trigger.pos, points.TPos_Q401801Trigger.rot, true, false, 3)
end

function Quest4018:OnSubFinish401801(arg1)
    print("OnSubFinish401801")
    this:SafeDestroyQuestNpc(npcs.Npc13512Data.alias, 3)
end

function Quest4018:OnSubStart401802(arg1)
    print("OnSubStart401802")
    this:CreateQuestNpc(arg1, npcs.Npc13515Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13515Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13548Data.id, 0)
    actorMgr:CreateActorWithPos("Q401802Trigger", "Actor/Gadget/Q401802Trigger", 70900002, 0, points.TPos_Q401802Trigger.pos, points.TPos_Q401802Trigger.rot, true, false, 3)
end

function Quest4018:OnSubFinish401802(arg1)
    print("OnSubFinish401802")
    this:SafeDestroyQuestNpc(npcs.Npc13515Data.alias, 3)
end

function Quest4018:OnSubStart401805(arg1)
    print("OnSubStart401805")
    this:CreateQuestNpc(arg1, npcs.Npc13518Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13519Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13519Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13520Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13520Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q401805Trigger", "Actor/Gadget/Q401805Trigger", 70900002, 0, points.TPos_Q401805Trigger.pos, points.TPos_Q401805Trigger.rot, true, false, 3)
end

function Quest4018:OnSubFinish401805(arg1)
    print("OnSubFinish401805")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest4018:OnSubStart401813(arg1)
    print("OnSubStart401813")
    this:GetQuestNpcActor(npcs.Npc13518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13519Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13520Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest4018:OnSubFinish401813(arg1)
    print("OnSubFinish401813")
end

function Quest4018:OnSubStart401811(arg1)
    print("OnSubStart401811")
    this:GetQuestNpcActor(npcs.Npc13518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13519Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13520Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest4018:OnSubFinish401811(arg1)
    print("OnSubFinish401811")
end

function Quest4018:OnSubStart401812(arg1)
    print("OnSubStart401812")
    this:GetQuestNpcActor(npcs.Npc13518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13519Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13520Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest4018:OnSubFinish401812(arg1)
    print("OnSubFinish401812")
end

function Quest4018:OnSubStart401814(arg1)
    print("OnSubStart401814")
    this:GetQuestNpcActor(npcs.Npc13518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13519Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13520Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest4018:OnSubFinish401814(arg1)
    print("OnSubFinish401814")
end

function Quest4018:OnSubStart401803(arg1)
    print("OnSubStart401803")
    this:GetQuestNpcActor(npcs.Npc13518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13519Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13520Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q401803Trigger", "Actor/Gadget/Q401803Trigger", 70900002, 0, points.TPos_Q401803Trigger.pos, points.TPos_Q401803Trigger.rot, true, false, 3)
end

function Quest4018:OnSubFinish401803(arg1)
    print("OnSubFinish401803")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest4018:OnSubStart401806(arg1)
    print("OnSubStart401806")
    this:GetQuestNpcActor(npcs.Npc13518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13519Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13520Data.alias):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13548Data.id, 0)
end

function Quest4018:OnSubFinish401806(arg1)
    print("OnSubFinish401806")
    this:SafeDestroyQuestNpc(npcs.Npc13518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13519Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13520Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13548Data.alias, 3)
end

function Quest4018:OnSubStart401807(arg1)
    print("OnSubStart401807")
    this:CreateQuestNpc(arg1, npcs.Npc13517Data.id, 0)
end

function Quest4018:OnSubFinish401807(arg1)
    print("OnSubFinish401807")
    this:SafeDestroyQuestNpc(npcs.Npc13517Data.alias, 3)
end

function Quest4018:OnSubStart401816(arg1)
    print("OnSubStart401816")
    this:DailyNpcSafeHideSelf(npcs.Npc5250Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5272Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5220Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5212Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5214Data.alias, 1, true)
    this:SafeDestroyQuestNpc(npcs.Npc13518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13519Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13520Data.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13692Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13693Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13694Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13695Data.id, 0)
    end)

    actorMgr:CreateActorWithPos("Q401816Trigger", "Actor/Gadget/Q401816Trigger", 70900002, 0, points.TPos_Q401816Trigger.pos, points.TPos_Q401816Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerkanshou01", "Actor/Gadget/Q401804Triggerkanshou01", 70900002, 0, points.TPos_Q401804Triggerkanshou01.pos, points.TPos_Q401804Triggerkanshou01.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerkanshou02", "Actor/Gadget/Q401804Triggerkanshou02", 70900002, 0, {x = 4492.93, y = 152.858, z = 4638.983}, {x = 0.0, y = 259.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerkanshou03", "Actor/Gadget/Q401804Triggerkanshou03", 70900002, 0, {x = 4447.965, y = 150.1, z = 4664.861}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerkanshou04", "Actor/Gadget/Q401804Triggerkanshou04", 70900002, 0, points.TPos_Q401804Triggerkanshou04.pos, points.TPos_Q401804Triggerkanshou04.rot, true, false, 3)
    this:ActorDestroy("Q401804Triggerawaytips01")
    this:ActorDestroy("Q401804Triggerawaytips02")
    this:ActorDestroy("Q401804Triggerdownaway")
    this:ActorDestroy("Q401804Triggerfinish")
    this:ActorDestroy("Q401804Triggerlookat")
    this:ActorDestroy("Q401804Triggerishere")
    this:ActorDestroy("Q401804Trigger02walk")
    this:ActorDestroy("Q401804Trigger03walk")
end

function Quest4018:OnSubFinish401816(arg1)
    print("OnSubFinish401816")
end

function Quest4018:OnSubStart401804(arg1)
    print("OnSubStart401804")
    this:CreateQuestNpc(arg1, npcs.Npc13692Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13693Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13694Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13695Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5250Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5272Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5220Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5212Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5214Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13518Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13519Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13520Data.id, 0)
    end)

    actorMgr:CreateActorWithPos("Q401804Triggerkanshou01", "Actor/Gadget/Q401804Triggerkanshou01", 70900002, 0, points.TPos_Q401804Triggerkanshou01.pos, points.TPos_Q401804Triggerkanshou01.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerkanshou02", "Actor/Gadget/Q401804Triggerkanshou02", 70900002, 0, {x = 4492.93, y = 152.858, z = 4638.983}, {x = 0.0, y = 259.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerkanshou03", "Actor/Gadget/Q401804Triggerkanshou03", 70900002, 0, {x = 4447.965, y = 150.1, z = 4664.861}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerkanshou04", "Actor/Gadget/Q401804Triggerkanshou04", 70900002, 0, points.TPos_Q401804Triggerkanshou04.pos, points.TPos_Q401804Triggerkanshou04.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerawaytips01", "Actor/Gadget/Q401804Triggerawaytips01", 70900002, 0, points.TPos_Q401804Triggerawaytips01.pos, points.TPos_Q401804Triggerawaytips01.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerawaytips02", "Actor/Gadget/Q401804Triggerawaytips02", 70900002, 0, points.TPos_Q401804Triggerawaytips02.pos, points.TPos_Q401804Triggerawaytips02.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerdownaway", "Actor/Gadget/Q401804Triggerdownaway", 70900002, 0, points.TPos_Q401804Triggerdownaway.pos, points.TPos_Q401804Triggerdownaway.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerfinish", "Actor/Gadget/Q401804Triggerfinish", 70900002, 0, points.TPos_Q401804Triggerfinish.pos, points.TPos_Q401804Triggerfinish.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerlookat", "Actor/Gadget/Q401804Triggerlookat", 70900002, 0, points.TPos_Q401804Triggerlookat.pos, points.TPos_Q401804Triggerlookat.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Triggerishere", "Actor/Gadget/Q401804Triggerishere", 70900002, 0, points.TPos_Q401804Triggerishere.pos, points.TPos_Q401804Triggerishere.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Trigger02walk", "Actor/Gadget/Q401804Trigger02walk", 70900002, 0, {x = 4479.716, y = 150.1, z = 4622.129}, {x = 0.0, y = 10.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401804Trigger03walk", "Actor/Gadget/Q401804Trigger03walk", 70900002, 0, {x = 4465.155, y = 150.14, z = 4659.482}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest4018:OnSubFinish401804(arg1)
    print("OnSubFinish401804")
    this:ActorDestroy("Q401804Triggerkanshou01")
    this:ActorDestroy("Q401804Triggerkanshou02")
    this:ActorDestroy("Q401804Triggerkanshou03")
    this:ActorDestroy("Q401804Triggerkanshou04")
    this:ActorDestroy("Q401804Triggerawaytips01")
    this:ActorDestroy("Q401804Triggerawaytips02")
    this:ActorDestroy("Q401804Triggerdownaway")
    this:ActorDestroy("Q401804Triggerfinish")
    this:ActorDestroy("Q401804Triggerlookat")
    this:ActorDestroy("Q401804Triggerishere")
    this:ActorDestroy("Q401804Trigger02walk")
    this:ActorDestroy("Q401804Trigger03walk")
    this:SafeDestroyQuestNpc(npcs.Npc13518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13519Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13520Data.alias, 3)
end

function Quest4018:OnSubStart401815(arg1)
    print("OnSubStart401815")
end

function Quest4018:OnSubFinish401815(arg1)
    print("OnSubFinish401815")
end

function Quest4018:OnSubFailed401815(arg1)
    print("OnSubFailed401815")
    this:ShowBlackScreenWithDialogText(0.5, 2.5, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 1)
    end, nil, nil, 0, false, true)
end

function Quest4018:OnSubStart401809(arg1)
    print("OnSubStart401809")
    this:DailyNpcSafeHideSelf(npcs.Npc5250Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5272Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5220Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5212Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5214Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401809Trigger", "Actor/Gadget/Q401809Trigger", 70900002, 0, points.TPos_Q401809Trigger.pos, points.TPos_Q401809Trigger.rot, true, false, 3)
end

function Quest4018:OnSubFinish401809(arg1)
    print("OnSubFinish401809")
    this:TransmitPlayerById(arg1, 1)
    this:LightNotifyTo(npcs.Npc5250Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5272Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5220Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5212Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5214Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13519Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13520Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13692Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13693Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13694Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13695Data.alias, 3)
end

function Quest4018:OnSubStart401808(arg1)
    print("OnSubStart401808")
    actorMgr:CreateActorWithPos("Q401808Triggerkanshou01", "Actor/Gadget/Q401808Triggerkanshou01", 70900002, 0, points.TPos_Q401808Triggerkanshou01.pos, points.TPos_Q401808Triggerkanshou01.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401808Triggerkanshou02", "Actor/Gadget/Q401808Triggerkanshou02", 70900002, 0, points.TPos_Q401808Triggerkanshou02.pos, points.TPos_Q401808Triggerkanshou02.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401808Triggerkanshou03", "Actor/Gadget/Q401808Triggerkanshou03", 70900002, 0, points.TPos_Q401808Triggerkanshou03.pos, points.TPos_Q401808Triggerkanshou03.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401808Triggerkanshou04", "Actor/Gadget/Q401808Triggerkanshou04", 70900002, 0, points.TPos_Q401808Triggerkanshou04.pos, points.TPos_Q401808Triggerkanshou04.rot, true, false, 3)
end

function Quest4018:OnSubFinish401808(arg1)
    print("OnSubFinish401808")
    this:ActorDestroy("Q401808Triggerkanshou01")
    this:ActorDestroy("Q401808Triggerkanshou02")
    this:ActorDestroy("Q401808Triggerkanshou03")
    this:ActorDestroy("Q401808Triggerkanshou04")
end

function Quest4018:OnSubFailed401808(arg1)
    print("OnSubFailed401808")
    this:TransmitPlayerById(arg1, 1)
end

function Quest4018:OnSubStart401810(arg1)
    print("OnSubStart401810")
    this:CreateQuestNpc(arg1, npcs.Npc13517Data.id, 0)
end

function Quest4018:OnSubFinish401810(arg1)
    print("OnSubFinish401810")
    this:SafeDestroyQuestNpc(npcs.Npc13517Data.alias, 3)
end

return Quest4018

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74088 = class("Quest74088", QuestActorProxy)
Quest74088.defaultAlias = "Quest74088"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74088:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74088:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7408801"] = self.OnSubStart7408801,
        ["7408802"] = self.OnSubStart7408802,
        ["7408803"] = self.OnSubStart7408803,
        ["7408804"] = self.OnSubStart7408804,
        ["7408806"] = self.OnSubStart7408806,
        ["7408805"] = self.OnSubStart7408805,
        ["7408807"] = self.OnSubStart7408807
    }
end

function Quest74088:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7408801"] = self.OnSubFinish7408801,
        ["7408802"] = self.OnSubFinish7408802,
        ["7408803"] = self.OnSubFinish7408803,
        ["7408804"] = self.OnSubFinish7408804,
        ["7408806"] = self.OnSubFinish7408806,
        ["7408805"] = self.OnSubFinish7408805,
        ["7408807"] = self.OnSubFinish7408807
    }
end

function Quest74088:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74088:Start()
    print("Start")
end

function Quest74088:OnDestroy()
    print("OnDestroy")
end

function Quest74088:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74088:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74088:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74088:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74088:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest74088:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74088:OnSubStart7408801(arg1)
    print("OnSubStart7408801")
    actorMgr:CreateActorWithPos("Q7408801Trigger", "Actor/Gadget/Q7408801Trigger", 70900002, 0, points.TPos_Q7408801Trigger.pos, points.TPos_Q7408801Trigger.rot, true, false, 3)
end

function Quest74088:OnSubFinish7408801(arg1)
    print("OnSubFinish7408801")
end

function Quest74088:OnSubStart7408802(arg1)
    print("OnSubStart7408802")
end

function Quest74088:OnSubFinish7408802(arg1)
    print("OnSubFinish7408802")
end

function Quest74088:OnSubStart7408803(arg1)
    print("OnSubStart7408803")
    actorMgr:CreateActorWithPos("Q7408803Trigger", "Actor/Gadget/Q7408803Trigger", 70900002, 0, points.TPos_Q7408803Trigger.pos, points.TPos_Q7408803Trigger.rot, true, false, 3)
end

function Quest74088:OnSubFinish7408803(arg1)
    print("OnSubFinish7408803")
end

function Quest74088:OnSubStart7408804(arg1)
    print("OnSubStart7408804")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
end

function Quest74088:OnSubFinish7408804(arg1)
    print("OnSubFinish7408804")
end

function Quest74088:OnSubStart7408806(arg1)
    print("OnSubStart7408806")
    actorMgr:CreateActorWithPos("Q74088NPCTrigger", "Actor/Gadget/Q74088NPCTrigger", 70900002, 0, points.TPos_Q74088NPCTrigger.pos, points.TPos_Q74088NPCTrigger.rot, true, false, 3)
end

function Quest74088:OnSubFinish7408806(arg1)
    print("OnSubFinish7408806")
    this:ActorDestroy("Q74088NPCTrigger")
    if this:CheckSubQuestState(7408703, 3, true) then
        this:SetNavigationByMainId(74087, true)
    end

    this:NpcDestroyWithBlackscreen(3, npcs.Npc21084Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74088:OnSubStart7408805(arg1)
    print("OnSubStart7408805")
end

function Quest74088:OnSubFinish7408805(arg1)
    print("OnSubFinish7408805")
end

function Quest74088:OnSubStart7408807(arg1)
    print("OnSubStart7408807")
end

function Quest74088:OnSubFinish7408807(arg1)
    print("OnSubFinish7408807")
end

return Quest74088

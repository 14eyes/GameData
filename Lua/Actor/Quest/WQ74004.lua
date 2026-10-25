require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74004 = class("Quest74004", QuestActorProxy)
Quest74004.defaultAlias = "Quest74004"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74004:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400401"] = self.OnSubStart7400401,
        ["7400428"] = self.OnSubStart7400428,
        ["7400418"] = self.OnSubStart7400418,
        ["7400402"] = self.OnSubStart7400402,
        ["7400431"] = self.OnSubStart7400431,
        ["7400432"] = self.OnSubStart7400432,
        ["7400429"] = self.OnSubStart7400429,
        ["7400419"] = self.OnSubStart7400419,
        ["7400404"] = self.OnSubStart7400404,
        ["7400433"] = self.OnSubStart7400433,
        ["7400430"] = self.OnSubStart7400430,
        ["7400434"] = self.OnSubStart7400434,
        ["7400407"] = self.OnSubStart7400407,
        ["7400421"] = self.OnSubStart7400421,
        ["7400408"] = self.OnSubStart7400408,
        ["7400424"] = self.OnSubStart7400424,
        ["7400413"] = self.OnSubStart7400413,
        ["7400427"] = self.OnSubStart7400427,
        ["7400414"] = self.OnSubStart7400414,
        ["7400425"] = self.OnSubStart7400425,
        ["7400415"] = self.OnSubStart7400415,
        ["7400420"] = self.OnSubStart7400420,
        ["7400406"] = self.OnSubStart7400406,
        ["7400422"] = self.OnSubStart7400422,
        ["7400409"] = self.OnSubStart7400409,
        ["7400410"] = self.OnSubStart7400410,
        ["7400423"] = self.OnSubStart7400423,
        ["7400411"] = self.OnSubStart7400411,
        ["7400412"] = self.OnSubStart7400412,
        ["7400416"] = self.OnSubStart7400416,
        ["7400426"] = self.OnSubStart7400426,
        ["7400417"] = self.OnSubStart7400417,
        ["7400405"] = self.OnSubStart7400405,
        ["7400403"] = self.OnSubStart7400403
    }
end

function Quest74004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400401"] = self.OnSubFinish7400401,
        ["7400428"] = self.OnSubFinish7400428,
        ["7400418"] = self.OnSubFinish7400418,
        ["7400402"] = self.OnSubFinish7400402,
        ["7400431"] = self.OnSubFinish7400431,
        ["7400432"] = self.OnSubFinish7400432,
        ["7400429"] = self.OnSubFinish7400429,
        ["7400419"] = self.OnSubFinish7400419,
        ["7400404"] = self.OnSubFinish7400404,
        ["7400433"] = self.OnSubFinish7400433,
        ["7400430"] = self.OnSubFinish7400430,
        ["7400434"] = self.OnSubFinish7400434,
        ["7400407"] = self.OnSubFinish7400407,
        ["7400421"] = self.OnSubFinish7400421,
        ["7400408"] = self.OnSubFinish7400408,
        ["7400424"] = self.OnSubFinish7400424,
        ["7400413"] = self.OnSubFinish7400413,
        ["7400427"] = self.OnSubFinish7400427,
        ["7400414"] = self.OnSubFinish7400414,
        ["7400425"] = self.OnSubFinish7400425,
        ["7400415"] = self.OnSubFinish7400415,
        ["7400420"] = self.OnSubFinish7400420,
        ["7400406"] = self.OnSubFinish7400406,
        ["7400422"] = self.OnSubFinish7400422,
        ["7400409"] = self.OnSubFinish7400409,
        ["7400410"] = self.OnSubFinish7400410,
        ["7400423"] = self.OnSubFinish7400423,
        ["7400411"] = self.OnSubFinish7400411,
        ["7400412"] = self.OnSubFinish7400412,
        ["7400416"] = self.OnSubFinish7400416,
        ["7400426"] = self.OnSubFinish7400426,
        ["7400417"] = self.OnSubFinish7400417,
        ["7400405"] = self.OnSubFinish7400405,
        ["7400403"] = self.OnSubFinish7400403
    }
end

function Quest74004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74004:Start()
    print("Start")
end

function Quest74004:OnDestroy()
    print("OnDestroy")
end

function Quest74004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74004:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74004:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 10 then
        actorUtils.FinishQuestID(false, 7400431)
    elseif arg1 == 20 then
        actorUtils.FinishQuestID(false, 7400432)
    elseif arg1 == 30 then
        actorUtils.FinishQuestID(false, 7400433)
    elseif arg1 == 50 then
        this:PlayCutsceneIndex(7400427, function(arg1)
            actorUtils.FinishQuestID(false, 7400413)
        end, nil, nil, false)
    end
end

function Quest74004:OnSubStart7400401(arg1)
    print("OnSubStart7400401")
    this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400401Trigger", "Actor/Gadget/Q7400401Trigger", 70900002, 0, {x = 3837.331, y = -567.841, z = 4649.586}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74004:OnSubFinish7400401(arg1)
    print("OnSubFinish7400401")
    self:SetNavigationByMainId(74004, true)
end

function Quest74004:OnSubStart7400428(arg1)
    print("OnSubStart7400428")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74004:OnSubFinish7400428(arg1)
    print("OnSubFinish7400428")
    this:NarratorOnlyTaskByData(datas.Narrator_7400401)
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    self:SetNavigationByMainId(74004, true)
end

function Quest74004:OnSubStart7400418(arg1)
    print("OnSubStart7400418")
    this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400418Trigger", "Actor/Gadget/Q7400418Trigger", 70900002, 0, {x = 3875.415, y = -563.147, z = 4628.407}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74004:OnSubFinish7400418(arg1)
    print("OnSubFinish7400418")
    self:SetNavigationByMainId(74004, true)
end

function Quest74004:OnSubStart7400402(arg1)
    print("OnSubStart7400402")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74004:OnSubFinish7400402(arg1)
    print("OnSubFinish7400402")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    self:SetNavigationByMainId(74004, true)
end

function Quest74004:OnSubStart7400431(arg1)
    print("OnSubStart7400431")
end

function Quest74004:OnSubFinish7400431(arg1)
    print("OnSubFinish7400431")
end

function Quest74004:OnSubStart7400432(arg1)
    print("OnSubStart7400432")
end

function Quest74004:OnSubFinish7400432(arg1)
    print("OnSubFinish7400432")
end

function Quest74004:OnSubStart7400429(arg1)
    print("OnSubStart7400429")
    this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 1)
        this:CallDelay(1.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21002Data.alias, 74004)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData01, 4, 2, -1, nil, nil, nil, nil, nil, nil, true)
            this:NpcForceAvatarWalkByDist(questNpcActor, 3, 5)
        end)

        actorMgr:CreateActorWithPos("Q7400429FinishTrigger", "Actor/Gadget/Q7400429FinishTrigger", 70900002, 0, {x = 3901.457, y = -561.512, z = 4637.207}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        actorMgr:CreateActorWithPos("Q7400429FailTrigger", "Actor/Gadget/Q7400429FailTrigger", 70900002, 0, {x = 3902.035, y = -561.076, z = 4638.845}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    end)
end

function Quest74004:OnSubFinish7400429(arg1)
    print("OnSubFinish7400429")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21002Data.alias, 74004)
    questNpcActor:ClearFollowTask()
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:ActorDestroy("Q7400429FailTrigger")
end

function Quest74004:OnSubStart7400419(arg1)
    print("OnSubStart7400419")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21002Data.id, 7400419, 0, 20, 2)
    actorMgr:CreateActorWithPos("Q7400419Trigger", "Actor/Gadget/Q7400419Trigger", 70900002, 0, {x = 3900.718, y = -562.5, z = 4638.231}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74004:OnSubFinish7400419(arg1)
    print("OnSubFinish7400419")
end

function Quest74004:OnSubStart7400404(arg1)
    print("OnSubStart7400404")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74004:OnSubFinish7400404(arg1)
    print("OnSubFinish7400404")
    this:NarratorOnlyTaskByData(datas.Narrator_7400402)
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74004:OnSubStart7400433(arg1)
    print("OnSubStart7400433")
end

function Quest74004:OnSubFinish7400433(arg1)
    print("OnSubFinish7400433")
end

function Quest74004:OnSubStart7400430(arg1)
    print("OnSubStart7400430")
    this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 1)
        this:CallDelay(1.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21002Data.alias, 74004)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData02, 4, 2, -1, nil, nil, nil, nil, nil, nil, true)
            this:NpcForceAvatarWalkByDist(questNpcActor, 3, 5)
        end)

        actorMgr:CreateActorWithPos("Q7400430FinishTrigger", "Actor/Gadget/Q7400430FinishTrigger", 70900002, 0, {x = 3875.092, y = -564.036, z = 4653.891}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        actorMgr:CreateActorWithPos("Q7400430FailTrigger", "Actor/Gadget/Q7400430FailTrigger", 70900002, 0, {x = 3893.214, y = -564.049, z = 4653.016}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    end)
end

function Quest74004:OnSubFinish7400430(arg1)
    print("OnSubFinish7400430")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21002Data.alias, 74004)
    questNpcActor:ClearFollowTask()
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:ActorDestroy("Q7400430FailTrigger")
end

function Quest74004:OnSubStart7400434(arg1)
    print("OnSubStart7400434")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc21002Data.alias, 3)
        this:ActionSafeCall(function(arg1)
            this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21002Data.id, 7400434, 0, 20, 2)
            this:ActionSafeCall(function(arg1)
                this:NarratorOnlyTaskByData(datas.Narrator_7400403, function(arg1)
                    actorUtils.FinishQuestID(false, 7400434)
                end)
            end)
        end)
    end, nil, nil, 0, false, true)
end

function Quest74004:OnSubFinish7400434(arg1)
    print("OnSubFinish7400434")
end

function Quest74004:OnSubStart7400407(arg1)
    print("OnSubStart7400407")
    this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
end

function Quest74004:OnSubFinish7400407(arg1)
    print("OnSubFinish7400407")
end

function Quest74004:OnSubStart7400421(arg1)
    print("OnSubStart7400421")
    actorMgr:CreateActorWithPos("Q7400421Trigger", "Actor/Gadget/Q7400421Trigger", 70900002, 0, {x = 3873.708, y = -564.061, z = 4654.458}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74004:OnSubFinish7400421(arg1)
    print("OnSubFinish7400421")
end

function Quest74004:OnSubStart7400408(arg1)
    print("OnSubStart7400408")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc20999Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74004:OnSubFinish7400408(arg1)
    print("OnSubFinish7400408")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_Teleport, 5, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21002Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20999Data.alias, 3)
end

function Quest74004:OnSubStart7400424(arg1)
    print("OnSubStart7400424")
    actorMgr:CreateActorWithPos("Q7400424Trigger", "Actor/Gadget/Q7400424Trigger", 70900002, 0, {x = 3794.219, y = -557.051, z = 4660.396}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74004:OnSubFinish7400424(arg1)
    print("OnSubFinish7400424")
end

function Quest74004:OnSubStart7400413(arg1)
    print("OnSubStart7400413")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74004:OnSubFinish7400413(arg1)
    print("OnSubFinish7400413")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74004:OnSubStart7400427(arg1)
    print("OnSubStart7400427")
    this:PlayCutsceneIndex(7400427, function(arg1)
        actorUtils.FinishQuestID(false, 7400427)
    end, nil, nil, false)
end

function Quest74004:OnSubFinish7400427(arg1)
    print("OnSubFinish7400427")
end

function Quest74004:OnSubStart7400414(arg1)
    print("OnSubStart7400414")
    actorMgr:CreateActorWithPos("Q7400414Trigger", "Actor/Gadget/Q7400414Trigger", 70900002, 0, points.TPos_Q7400414Trigger.pos, points.TPos_Q7400414Trigger.rot, true, false)
end

function Quest74004:OnSubFinish7400414(arg1)
    print("OnSubFinish7400414")
end

function Quest74004:OnSubStart7400425(arg1)
    print("OnSubStart7400425")
    actorMgr:CreateActorWithPos("Q7400425Trigger", "Actor/Gadget/Q7400425Trigger", 70900002, 0, points.TPos_Q7400425Trigger.pos, points.TPos_Q7400425Trigger.rot, true, false, 3)
end

function Quest74004:OnSubFinish7400425(arg1)
    print("OnSubFinish7400425")
end

function Quest74004:OnSubStart7400415(arg1)
    print("OnSubStart7400415")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74004:OnSubFinish7400415(arg1)
    print("OnSubFinish7400415")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74004:OnSubStart7400420(arg1)
    print("OnSubStart7400420")
    actorMgr:CreateActorWithPos("Q7400420Trigger", "Actor/Gadget/Q7400420Trigger", 70900002, 0, points.TPos_Q7400420Trigger.pos, points.TPos_Q7400420Trigger.rot, true, false, 3)
end

function Quest74004:OnSubFinish7400420(arg1)
    print("OnSubFinish7400420")
end

function Quest74004:OnSubStart7400406(arg1)
    print("OnSubStart7400406")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:RequestInteraction(npcs.Npc20995Data.alias)
end

function Quest74004:OnSubFinish7400406(arg1)
    print("OnSubFinish7400406")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74004:OnSubStart7400422(arg1)
    print("OnSubStart7400422")
    actorMgr:CreateActorWithPos("Q7400422Trigger", "Actor/Gadget/Q7400422Trigger", 70900002, 0, points.TPos_Q7400422Trigger.pos, points.TPos_Q7400422Trigger.rot, true, false, 3)
end

function Quest74004:OnSubFinish7400422(arg1)
    print("OnSubFinish7400422")
end

function Quest74004:OnSubStart7400409(arg1)
    print("OnSubStart7400409")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:RequestInteraction(npcs.Npc20995Data.alias)
end

function Quest74004:OnSubFinish7400409(arg1)
    print("OnSubFinish7400409")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74004:OnSubStart7400410(arg1)
    print("OnSubStart7400410")
    actorMgr:CreateActorWithPos("Q7400410Trigger", "Actor/Gadget/Q7400410Trigger", 70900002, 0, points.TPos_Q7400410Trigger.pos, points.TPos_Q7400410Trigger.rot, true, false, 3)
end

function Quest74004:OnSubFinish7400410(arg1)
    print("OnSubFinish7400410")
end

function Quest74004:OnSubStart7400423(arg1)
    print("OnSubStart7400423")
    actorMgr:CreateActorWithPos("Q7400423Trigger", "Actor/Gadget/Q7400423Trigger", 70900002, 0, points.TPos_Q7400423Trigger.pos, points.TPos_Q7400423Trigger.rot, true, false, 3)
end

function Quest74004:OnSubFinish7400423(arg1)
    print("OnSubFinish7400423")
end

function Quest74004:OnSubStart7400411(arg1)
    print("OnSubStart7400411")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
    this:RequestInteraction(npcs.Npc20995Data.alias)
end

function Quest74004:OnSubFinish7400411(arg1)
    print("OnSubFinish7400411")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74004:OnSubStart7400412(arg1)
    print("OnSubStart7400412")
end

function Quest74004:OnSubFinish7400412(arg1)
    print("OnSubFinish7400412")
end

function Quest74004:OnSubStart7400416(arg1)
    print("OnSubStart7400416")
end

function Quest74004:OnSubFinish7400416(arg1)
    print("OnSubFinish7400416")
end

function Quest74004:OnSubStart7400426(arg1)
    print("OnSubStart7400426")
    actorMgr:CreateActorWithPos("Q7400426Trigger", "Actor/Gadget/Q7400426Trigger", 70900002, 0, points.TPos_Q7400426Trigger.pos, points.TPos_Q7400426Trigger.rot, true, false, 3)
end

function Quest74004:OnSubFinish7400426(arg1)
    print("OnSubFinish7400426")
end

function Quest74004:OnSubStart7400417(arg1)
    print("OnSubStart7400417")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:RequestInteraction(npcs.Npc20995Data.alias)
end

function Quest74004:OnSubFinish7400417(arg1)
    print("OnSubFinish7400417")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74004:OnSubStart7400405(arg1)
    print("OnSubStart7400405")
    this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400405Trigger", "Actor/Gadget/Q7400405Trigger", 70900002, 0, {x = 3873.609, y = -563.055, z = 4654.287}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74004:OnSubFinish7400405(arg1)
    print("OnSubFinish7400405")
    this:NarratorOnlyTaskByData(datas.Narrator_7400403)
end

function Quest74004:OnSubStart7400403(arg1)
    print("OnSubStart7400403")
    this:CreateQuestNpc(arg1, npcs.Npc21002Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400403Trigger", "Actor/Gadget/Q7400403Trigger", 70900002, 0, {x = 3902.801, y = -562.66, z = 4639.479}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74004:OnSubFinish7400403(arg1)
    print("OnSubFinish7400403")
end

return Quest74004

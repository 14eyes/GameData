require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74010 = class("Quest74010", QuestActorProxy)
Quest74010.defaultAlias = "Quest74010"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74010:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7401016"] = self.OnSubStart7401016,
        ["7401001"] = self.OnSubStart7401001,
        ["7401002"] = self.OnSubStart7401002,
        ["7401006"] = self.OnSubStart7401006,
        ["7401011"] = self.OnSubStart7401011,
        ["7401007"] = self.OnSubStart7401007,
        ["7401012"] = self.OnSubStart7401012,
        ["7401008"] = self.OnSubStart7401008,
        ["7401013"] = self.OnSubStart7401013,
        ["7401009"] = self.OnSubStart7401009,
        ["7401014"] = self.OnSubStart7401014,
        ["7401010"] = self.OnSubStart7401010,
        ["7401015"] = self.OnSubStart7401015,
        ["7401003"] = self.OnSubStart7401003,
        ["7401004"] = self.OnSubStart7401004,
        ["7401005"] = self.OnSubStart7401005
    }
end

function Quest74010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7401016"] = self.OnSubFinish7401016,
        ["7401001"] = self.OnSubFinish7401001,
        ["7401002"] = self.OnSubFinish7401002,
        ["7401006"] = self.OnSubFinish7401006,
        ["7401011"] = self.OnSubFinish7401011,
        ["7401007"] = self.OnSubFinish7401007,
        ["7401012"] = self.OnSubFinish7401012,
        ["7401008"] = self.OnSubFinish7401008,
        ["7401013"] = self.OnSubFinish7401013,
        ["7401009"] = self.OnSubFinish7401009,
        ["7401014"] = self.OnSubFinish7401014,
        ["7401010"] = self.OnSubFinish7401010,
        ["7401015"] = self.OnSubFinish7401015,
        ["7401003"] = self.OnSubFinish7401003,
        ["7401004"] = self.OnSubFinish7401004,
        ["7401005"] = self.OnSubFinish7401005
    }
end

function Quest74010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7401001"] = self.OnSubFailed7401001}
end

function Quest74010:Start()
    print("Start")
end

function Quest74010:OnDestroy()
    print("OnDestroy")
end

function Quest74010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74010:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74010:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 1
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z - avatarForward.z * n
        local v = avatarForward
        v.x = v.x * 1
        v.z = v.z * 1
        self:CreateQuestNpcByIdWithPos(7401001, npcs.PaimonData.id, 2, avatarPos, M.Dir2Euler(v))
        this:GetQuestNpcActor(npcs.Npc5315Data.alias):TurnToAvatar()
    elseif arg1 == 102 then
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end
end

function Quest74010:OnSubStart7401016(arg1)
    print("OnSubStart7401016")
    this:CreateQuestNpc(arg1, npcs.Npc5315Data.id, 0)
    actorMgr:CreateActorWithPos("Q7401016Talk", "Actor/Gadget/Q7401016Talk", 70900002, 0, {x = 2449.465, y = 242.213, z = 4871.084}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74010:OnSubFinish7401016(arg1)
    print("OnSubFinish7401016")
    this:ActorDestroy("Q7401016Talk")
end

function Quest74010:OnSubStart7401001(arg1)
    print("OnSubStart7401001")
    this:CreateQuestNpc(arg1, npcs.Npc5315Data.id, 0)
end

function Quest74010:OnSubFinish7401001(arg1)
    print("OnSubFinish7401001")
end

function Quest74010:OnSubFailed7401001(arg1)
    print("OnSubFailed7401001")
    this:DestroyQuestNpcActor(npcs.Npc5315Data.alias, 3)
end

function Quest74010:OnSubStart7401002(arg1)
    print("OnSubStart7401002")
end

function Quest74010:OnSubFinish7401002(arg1)
    print("OnSubFinish7401002")
end

function Quest74010:OnSubStart7401006(arg1)
    print("OnSubStart7401006")
end

function Quest74010:OnSubFinish7401006(arg1)
    print("OnSubFinish7401006")
end

function Quest74010:OnSubStart7401011(arg1)
    print("OnSubStart7401011")
    actorMgr:CreateActorWithPos("Q74010Trigger", "Actor/Gadget/Q74010Trigger", 70900002, 0, points.TPos_Q74010Trigger.pos, points.TPos_Q74010Trigger.rot, true, false, 3)
end

function Quest74010:OnSubFinish7401011(arg1)
    print("OnSubFinish7401011")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74010:OnSubStart7401007(arg1)
    print("OnSubStart7401007")
end

function Quest74010:OnSubFinish7401007(arg1)
    print("OnSubFinish7401007")
end

function Quest74010:OnSubStart7401012(arg1)
    print("OnSubStart7401012")
    actorMgr:CreateActorWithPos("Q74010Trigger", "Actor/Gadget/Q74010Trigger", 70900002, 0, points.TPos_Q74010Trigger.pos, points.TPos_Q74010Trigger.rot, true, false, 3)
end

function Quest74010:OnSubFinish7401012(arg1)
    print("OnSubFinish7401012")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74010:OnSubStart7401008(arg1)
    print("OnSubStart7401008")
end

function Quest74010:OnSubFinish7401008(arg1)
    print("OnSubFinish7401008")
end

function Quest74010:OnSubStart7401013(arg1)
    print("OnSubStart7401013")
    actorMgr:CreateActorWithPos("Q74010Trigger", "Actor/Gadget/Q74010Trigger", 70900002, 0, points.TPos_Q74010Trigger.pos, points.TPos_Q74010Trigger.rot, true, false, 3)
end

function Quest74010:OnSubFinish7401013(arg1)
    print("OnSubFinish7401013")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74010:OnSubStart7401009(arg1)
    print("OnSubStart7401009")
end

function Quest74010:OnSubFinish7401009(arg1)
    print("OnSubFinish7401009")
end

function Quest74010:OnSubStart7401014(arg1)
    print("OnSubStart7401014")
    actorMgr:CreateActorWithPos("Q74010Trigger", "Actor/Gadget/Q74010Trigger", 70900002, 0, points.TPos_Q74010Trigger.pos, points.TPos_Q74010Trigger.rot, true, false, 3)
end

function Quest74010:OnSubFinish7401014(arg1)
    print("OnSubFinish7401014")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74010:OnSubStart7401010(arg1)
    print("OnSubStart7401010")
end

function Quest74010:OnSubFinish7401010(arg1)
    print("OnSubFinish7401010")
end

function Quest74010:OnSubStart7401015(arg1)
    print("OnSubStart7401015")
    this:CallDelayByQuest("Q7401015Delay", 1, function(arg1)
        actorUtils.FinishQuestID(false, 7401015)
    end)
end

function Quest74010:OnSubFinish7401015(arg1)
    print("OnSubFinish7401015")
end

function Quest74010:OnSubStart7401003(arg1)
    print("OnSubStart7401003")
    actorMgr:CreateActorWithPos("Q74010Trigger", "Actor/Gadget/Q74010Trigger", 70900002, 0, points.TPos_Q74010Trigger.pos, points.TPos_Q74010Trigger.rot, true, false, 3)
end

function Quest74010:OnSubFinish7401003(arg1)
    print("OnSubFinish7401003")
end

function Quest74010:OnSubStart7401004(arg1)
    print("OnSubStart7401004")
end

function Quest74010:OnSubFinish7401004(arg1)
    print("OnSubFinish7401004")
end

function Quest74010:OnSubStart7401005(arg1)
    print("OnSubStart7401005")
    actorMgr:CreateActorWithPos("Q74010Trigger", "Actor/Gadget/Q74010Trigger", 70900002, 0, points.TPos_Q74010Trigger.pos, points.TPos_Q74010Trigger.rot, true, false, 3)
end

function Quest74010:OnSubFinish7401005(arg1)
    print("OnSubFinish7401005")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5315Data.alias)
end

return Quest74010

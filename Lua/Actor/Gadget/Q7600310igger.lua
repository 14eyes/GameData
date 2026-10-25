require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600310igger = class("Q7600310igger", GadgetActorProxy)
Q7600310igger.defaultAlias = "Q7600310igger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600310igger:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3, arg4)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    actorMgr:GetActor("76003"):CreateQuestNpcByIdWithPos(arg1, arg2, arg4, avatarPos, avatarForward)
end

function Q7600310igger:OnPostDataPrepare()
    print("Q7600310igger - OnPostDataPrepare")
    this = self
end

function Q7600310igger:OnPostComponentPrepare()
    print("Q7600310igger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(5, 5, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600310igger:TriggerIn()
    print("Q7600310igger - TriggerIn")
    this:DestroySelf()
    this:CreateQuestNpcFaceToPlayer(7600304, 1005, 0.8, 0)
    actorMgr:GetActor("76003"):RequestInteraction(npcs.Paimon.alias, "", true)
    actorMgr:GetActor("76003"):GetQuestNpcActor(npcs.Paimon.alias, 76003):DestroyWithDisappear(false, nil)
end

function Q7600310igger:PreTriggerIn()
    print("Q7600310igger - PreTriggerIn")
end

function Q7600310igger:LightUpTriggerIn()
    print("Q7600310igger - LightUpTriggerIn")
end

function Q7600310igger:TriggerOut()
    print("Q7600310igger - TriggerOut")
end

return Q7600310igger

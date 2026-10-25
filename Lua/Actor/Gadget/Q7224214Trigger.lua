require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7224214Trigger = class("Q7224214Trigger", GadgetActorProxy)
Q7224214Trigger.defaultAlias = "Q7224214Trigger"
local Q72242ClientConfig = require("Quest/Client/Q72242ClientConfig")

local subIDs = Q72242ClientConfig.SubIDs
local npcs = Q72242ClientConfig.Npcs
local datas = Q72242ClientConfig.Datas

function Q7224214Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7224214Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9.003043, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7224214Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72242")
    actor.EnablePlayerInput(actor, false)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    actor.CreateQuestNpcByIdWithPos(actor, 7224214, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    actor.CallDelay(actor, 1, function()
        print("summonPaimon in trigger")
        actor:RequestInteraction(npcs.PaimonData.alias)
    end)

    actor.EnablePlayerInput(actor, true)
    self:DestroySelf()
end

function Q7224214Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7224214Trigger

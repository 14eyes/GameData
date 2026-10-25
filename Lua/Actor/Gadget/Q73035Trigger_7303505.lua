require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73035Trigger_7303505 = class("Q73035Trigger_7303505", GadgetActorProxy)
Q73035Trigger_7303505.defaultAlias = "Q73035Trigger_7303505"
local Q73035ClientConfig = require("Quest/Client/Q73035ClientConfig")

local subIDs = Q73035ClientConfig.SubIDs
local npcs = Q73035ClientConfig.Npcs
local datas = Q73035ClientConfig.Datas

function Q73035Trigger_7303505:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73035Trigger_7303505:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73035Trigger_7303505:TriggerIn()
    print("TriggerIn")
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
    self.CreateQuestNpcByIdWithPos(self, 7303505, npcs.PaimonData.id, 2, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 0.2, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)

    self.DestroySelf(self)
end

function Q73035Trigger_7303505:TriggerOut()
    print("TriggerOut")
end

return Q73035Trigger_7303505

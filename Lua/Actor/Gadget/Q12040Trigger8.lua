require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12040Trigger8 = class("Q12040Trigger8", GadgetActorProxy)
Q12040Trigger8.defaultAlias = "Q12040Trigger8"
local Q12040ClientConfig = require("Quest/Client/Q12040ClientConfig")

local subIDs = Q12040ClientConfig.SubIDs
local npcs = Q12040ClientConfig.Npcs
local gadgets = Q12040ClientConfig.Gadgets
local datas = Q12040ClientConfig.Datas

function Q12040Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12040Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12040Trigger8:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12040"):EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q12040_Look2").pos, 0, 3, false, false)
    self:DestroySelf()
end

function Q12040Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q12040Trigger8

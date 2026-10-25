require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002510_Trigger3 = class("Q4002510_Trigger3", GadgetActorProxy)
Q4002510_Trigger3.defaultAlias = "Q4002510_Trigger3"
local Q40025ClientConfig = require("Quest/Client/Q40025ClientConfig")

local subIDs = Q40025ClientConfig.SubIDs
local npcs = Q40025ClientConfig.Npcs
local gadgets = Q40025ClientConfig.Gadgets
local datas = Q40025ClientConfig.Datas

function Q4002510_Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002510_Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002510_Trigger3:TriggerIn()
    print("TriggerIn")
    self:PlayEffect("Eff_Quest_WinterCamp_Footsteps", sceneData:GetDummyPoint(3, "Q4002510_sound03").pos)
    self:DestroySelf()
end

function Q4002510_Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q4002510_Trigger3

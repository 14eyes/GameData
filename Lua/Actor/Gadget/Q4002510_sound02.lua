require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002510_sound02 = class("Q4002510_sound02", GadgetActorProxy)
Q4002510_sound02.defaultAlias = "Q4002510_sound02"
local Q40025ClientConfig = require("Quest/Client/Q40025ClientConfig")

local subIDs = Q40025ClientConfig.SubIDs
local npcs = Q40025ClientConfig.Npcs
local gadgets = Q40025ClientConfig.Gadgets
local datas = Q40025ClientConfig.Datas

function Q4002510_sound02:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002510_sound02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002510_sound02:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40025"):PlayEffect("Eff_Quest_WinterCamp_Footsteps", sceneData:GetDummyPoint(3, "Q4002509_track").pos)
    self:DestroySelf()
end

function Q4002510_sound02:TriggerOut()
    print("TriggerOut")
end

return Q4002510_sound02

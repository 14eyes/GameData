require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227815Trigger5 = class("Q7227815Trigger5", GadgetActorProxy)
Q7227815Trigger5.defaultAlias = "Q7227815Trigger5"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q7227815Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227815Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227815Trigger5:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72278"):RequestInteraction(npcs.Npc10090Data.alias)
    self:DestroySelf()
end

function Q7227815Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q7227815Trigger5

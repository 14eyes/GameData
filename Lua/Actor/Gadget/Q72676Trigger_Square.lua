require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72676Trigger_Square = class("Q72676Trigger_Square", GadgetActorProxy)
Q72676Trigger_Square.defaultAlias = "Q72676Trigger_Square"
local Q72676ClientConfig = require("Quest/Client/Q72676ClientConfig")

local subIDs = Q72676ClientConfig.SubIDs
local npcs = Q72676ClientConfig.Npcs
local gadgets = Q72676ClientConfig.Gadgets
local datas = Q72676ClientConfig.Datas

function Q72676Trigger_Square:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72676Trigger_Square:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72676Trigger_Square:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72676"):FinishQuestID(false, 7267604)
    self:DestroySelf()
end

function Q72676Trigger_Square:TriggerOut()
    print("TriggerOut")
end

return Q72676Trigger_Square

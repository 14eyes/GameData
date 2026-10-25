require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger6 = class("Q5026Trigger6", GadgetActorProxy)
Q5026Trigger6.defaultAlias = "Q5026Trigger6"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger6:OnPostDataPrepare()
    print("Q5026Trigger6 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger6:OnPostComponentPrepare()
    print("Q5026Trigger6 - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger6:TriggerIn()
    print("Q5026Trigger6 - TriggerIn")
end

function Q5026Trigger6:PreTriggerIn()
    print("Q5026Trigger6 - PreTriggerIn")
end

function Q5026Trigger6:LightUpTriggerIn()
    print("Q5026Trigger6 - LightUpTriggerIn")
end

function Q5026Trigger6:TriggerOut()
    print("Q5026Trigger6 - TriggerOut")
    actorMgr:GetActor("5026"):DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
    this:DestroySelf()
end

return Q5026Trigger6

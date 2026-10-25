require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40173Trigger4 = class("Q40173Trigger4", GadgetActorProxy)
Q40173Trigger4.defaultAlias = "Q40173Trigger4"
local Q40173ClientConfig = require("Quest/Client/Q40173ClientConfig")

local this
local subIDs = Q40173ClientConfig.SubIDs
local datas = Q40173ClientConfig.Datas
local npcs = Q40173ClientConfig.Npcs
local points = Q40173ClientConfig.Points

function Q40173Trigger4:OnPostDataPrepare()
    print("Q40173Trigger4 - OnPostDataPrepare")
    this = self
end

function Q40173Trigger4:OnPostComponentPrepare()
    print("Q40173Trigger4 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40173)
end

function Q40173Trigger4:TriggerIn()
    print("Q40173Trigger4 - TriggerIn")
    actorMgr:GetActor("40173"):RequestInteraction(npcs.Npc1096.alias, "", true)
    this:DestroySelf()
end

function Q40173Trigger4:PreTriggerIn()
    print("Q40173Trigger4 - PreTriggerIn")
end

function Q40173Trigger4:LightUpTriggerIn()
    print("Q40173Trigger4 - LightUpTriggerIn")
end

function Q40173Trigger4:TriggerOut()
    print("Q40173Trigger4 - TriggerOut")
end

return Q40173Trigger4

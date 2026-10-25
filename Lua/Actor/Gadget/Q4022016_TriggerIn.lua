require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022016_TriggerIn = class("Q4022016_TriggerIn", GadgetActorProxy)
Q4022016_TriggerIn.defaultAlias = "Q4022016_TriggerIn"
local Q40220ClientConfig = require("Quest/Client/Q40220ClientConfig")

local this
local subIDs = Q40220ClientConfig.SubIDs
local datas = Q40220ClientConfig.Datas
local npcs = Q40220ClientConfig.Npcs
local points = Q40220ClientConfig.Points

function Q4022016_TriggerIn:OnPostDataPrepare()
    print("Q4022016_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q4022016_TriggerIn:OnPostComponentPrepare()
    print("Q4022016_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40220)
end

function Q4022016_TriggerIn:TriggerIn()
    print("Q4022016_TriggerIn - TriggerIn")
    actorMgr:GetActor("40220"):RequestInteraction(npcs.Npc1098.alias, "", true)
    this:DestroySelf()
end

function Q4022016_TriggerIn:PreTriggerIn()
    print("Q4022016_TriggerIn - PreTriggerIn")
end

function Q4022016_TriggerIn:LightUpTriggerIn()
    print("Q4022016_TriggerIn - LightUpTriggerIn")
end

function Q4022016_TriggerIn:TriggerOut()
    print("Q4022016_TriggerIn - TriggerOut")
end

return Q4022016_TriggerIn

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411517Trigger = class("Q7411517Trigger", GadgetActorProxy)
Q7411517Trigger.defaultAlias = "Q7411517Trigger"
local Q74115ClientConfig = require("Quest/Client/Q74115ClientConfig")

local this
local subIDs = Q74115ClientConfig.SubIDs
local npcs = Q74115ClientConfig.Npcs
local points = Q74115ClientConfig.Points
local datas = Q74115ClientConfig.Datas

function Q7411517Trigger:OnPostDataPrepare()
    print("[MainId: 74115][Trigger: Q7411517Trigger] OnPostDataPrepare")
    this = self
end

function Q7411517Trigger:OnPostComponentPrepare()
    print("[MainId: 74115][Trigger: Q7411517Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411517Trigger:TriggerIn()
    print("[MainId: 74115][Trigger: Q7411517Trigger] TriggerIn")
    actorMgr:GetActor("74115"):RequestInteraction(npcs.Npc21167Data.alias, nil, true)
end

function Q7411517Trigger:PreTriggerIn()
    print("[MainId: 74115][Trigger: Q7411517Trigger] PreTriggerIn")
end

function Q7411517Trigger:LightUpTriggerIn()
    print("[MainId: 74115][Trigger: Q7411517Trigger] LightUpTriggerIn")
end

function Q7411517Trigger:TriggerOut()
    print("[MainId: 74115][Trigger: Q7411517Trigger] TriggerOut")
end

return Q7411517Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400311TriggerF2B = class("Q7400311TriggerF2B", GadgetActorProxy)
Q7400311TriggerF2B.defaultAlias = "Q7400311TriggerF2B"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400311TriggerF2B:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400311TriggerF2B] OnPostDataPrepare")
    this = self
end

function Q7400311TriggerF2B:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400311TriggerF2B] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 10, 14, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400311TriggerF2B:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400311TriggerF2B] TriggerIn")
    actorMgr:GetActor("74003"):RequestInteraction(npcs.Npc21120Data.alias)
end

function Q7400311TriggerF2B:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400311TriggerF2B] PreTriggerIn")
end

function Q7400311TriggerF2B:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400311TriggerF2B] LightUpTriggerIn")
end

function Q7400311TriggerF2B:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400311TriggerF2B] TriggerOut")
end

return Q7400311TriggerF2B

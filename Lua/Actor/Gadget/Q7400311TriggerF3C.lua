require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400311TriggerF3C = class("Q7400311TriggerF3C", GadgetActorProxy)
Q7400311TriggerF3C.defaultAlias = "Q7400311TriggerF3C"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400311TriggerF3C:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3C] OnPostDataPrepare")
    this = self
end

function Q7400311TriggerF3C:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3C] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 50, 14, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400311TriggerF3C:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3C] TriggerIn")
    actorMgr:GetActor("74003"):RequestInteraction(npcs.Npc21119Data.alias)
end

function Q7400311TriggerF3C:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3C] PreTriggerIn")
end

function Q7400311TriggerF3C:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3C] LightUpTriggerIn")
end

function Q7400311TriggerF3C:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3C] TriggerOut")
end

return Q7400311TriggerF3C

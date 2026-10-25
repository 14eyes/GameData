require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400311TriggerF3B = class("Q7400311TriggerF3B", GadgetActorProxy)
Q7400311TriggerF3B.defaultAlias = "Q7400311TriggerF3B"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400311TriggerF3B:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3B] OnPostDataPrepare")
    this = self
end

function Q7400311TriggerF3B:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3B] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 10, 14, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400311TriggerF3B:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3B] TriggerIn")
    actorMgr:GetActor("74003"):RequestInteraction(npcs.Npc21119Data.alias)
end

function Q7400311TriggerF3B:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3B] PreTriggerIn")
end

function Q7400311TriggerF3B:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3B] LightUpTriggerIn")
end

function Q7400311TriggerF3B:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400311TriggerF3B] TriggerOut")
end

return Q7400311TriggerF3B

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011902Talk = class("Q4011902Talk", GadgetActorProxy)
Q4011902Talk.defaultAlias = "Q4011902Talk"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011902Talk:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011902Talk] OnPostDataPrepare")
    this = self
end

function Q4011902Talk:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011902Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011902Talk:TriggerIn()
    print("[MainId: 40119][Trigger: Q4011902Talk] TriggerIn")
end

function Q4011902Talk:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011902Talk] PreTriggerIn")
end

function Q4011902Talk:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011902Talk] LightUpTriggerIn")
end

function Q4011902Talk:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011902Talk] TriggerOut")
end

return Q4011902Talk

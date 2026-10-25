require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400809_TriggerIn = class("Q400809_TriggerIn", GadgetActorProxy)
Q400809_TriggerIn.defaultAlias = "Q400809_TriggerIn"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400809_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400809_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400809_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400809_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12, 10, 12, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400809_TriggerIn:TriggerIn()
    print("[MainId: 4008][Trigger: Q400809_TriggerIn] TriggerIn")
    actorUtils.FinishQuestID(false, 400809)
    this:DestroySelf()
end

function Q400809_TriggerIn:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400809_TriggerIn] PreTriggerIn")
end

function Q400809_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400809_TriggerIn] LightUpTriggerIn")
end

function Q400809_TriggerIn:TriggerOut()
    print("[MainId: 4008][Trigger: Q400809_TriggerIn] TriggerOut")
end

return Q400809_TriggerIn

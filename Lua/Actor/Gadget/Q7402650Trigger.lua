require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402650Trigger = class("Q7402650Trigger", GadgetActorProxy)
Q7402650Trigger.defaultAlias = "Q7402650Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402650Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402650Trigger] OnPostDataPrepare")
    this = self
end

function Q7402650Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402650Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(180, 200, 200, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402650Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402650Trigger] TriggerIn")
end

function Q7402650Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402650Trigger] PreTriggerIn")
end

function Q7402650Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402650Trigger] LightUpTriggerIn")
end

function Q7402650Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402650Trigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7402650)
    this:DestroySelf()
end

return Q7402650Trigger

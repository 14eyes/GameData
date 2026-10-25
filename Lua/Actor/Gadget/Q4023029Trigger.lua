require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023029Trigger = class("Q4023029Trigger", GadgetActorProxy)
Q4023029Trigger.defaultAlias = "Q4023029Trigger"
local Q40230ClientConfig = require("Quest/Client/Q40230ClientConfig")

local this
local subIDs = Q40230ClientConfig.SubIDs
local datas = Q40230ClientConfig.Datas
local npcs = Q40230ClientConfig.Npcs
local points = Q40230ClientConfig.Points

function Q4023029Trigger:OnPostDataPrepare()
    print("Q4023029Trigger - OnPostDataPrepare")
    this = self
end

function Q4023029Trigger:OnPostComponentPrepare()
    print("Q4023029Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40230)
end

function Q4023029Trigger:TriggerIn()
    print("Q4023029Trigger - TriggerIn")
    actorMgr:GetActor("40230"):PlayerEnterDungeonWithData(17, 1305, 4023029, 1, datas.TransmitWithUI, nil, nil)
    this:DestroySelf()
end

function Q4023029Trigger:PreTriggerIn()
    print("Q4023029Trigger - PreTriggerIn")
end

function Q4023029Trigger:LightUpTriggerIn()
    print("Q4023029Trigger - LightUpTriggerIn")
end

function Q4023029Trigger:TriggerOut()
    print("Q4023029Trigger - TriggerOut")
end

return Q4023029Trigger

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023006Trigger = class("Q4023006Trigger", GadgetActorProxy)
Q4023006Trigger.defaultAlias = "Q4023006Trigger"
local Q40230ClientConfig = require("Quest/Client/Q40230ClientConfig")

local this
local subIDs = Q40230ClientConfig.SubIDs
local datas = Q40230ClientConfig.Datas
local npcs = Q40230ClientConfig.Npcs
local points = Q40230ClientConfig.Points

function Q4023006Trigger:OnPostDataPrepare()
    print("Q4023006Trigger - OnPostDataPrepare")
    this = self
end

function Q4023006Trigger:OnPostComponentPrepare()
    print("Q4023006Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40230)
end

function Q4023006Trigger:TriggerIn()
    print("Q4023006Trigger - TriggerIn")
    actorMgr:GetActor("40230"):PlayerEnterDungeonWithData(9, 1302, 4023026, 1, datas.TransmitWithUI, nil, nil)
    this:DestroySelf()
end

function Q4023006Trigger:PreTriggerIn()
    print("Q4023006Trigger - PreTriggerIn")
end

function Q4023006Trigger:LightUpTriggerIn()
    print("Q4023006Trigger - LightUpTriggerIn")
end

function Q4023006Trigger:TriggerOut()
    print("Q4023006Trigger - TriggerOut")
end

return Q4023006Trigger

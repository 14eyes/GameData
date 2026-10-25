require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023030Trigger = class("Q4023030Trigger", GadgetActorProxy)
Q4023030Trigger.defaultAlias = "Q4023030Trigger"
local Q40230ClientConfig = require("Quest/Client/Q40230ClientConfig")

local this
local subIDs = Q40230ClientConfig.SubIDs
local datas = Q40230ClientConfig.Datas
local npcs = Q40230ClientConfig.Npcs
local points = Q40230ClientConfig.Points

function Q4023030Trigger:OnPostDataPrepare()
    print("Q4023030Trigger - OnPostDataPrepare")
    this = self
end

function Q4023030Trigger:OnPostComponentPrepare()
    print("Q4023030Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40230)
end

function Q4023030Trigger:TriggerIn()
    print("Q4023030Trigger - TriggerIn")
    actorMgr:GetActor("40230"):TransmitPlayerWithQuestIdByData(4023030, 1, datas.Transmit_BB, nil, nil, nil)
    this:DestroySelf()
end

function Q4023030Trigger:PreTriggerIn()
    print("Q4023030Trigger - PreTriggerIn")
end

function Q4023030Trigger:LightUpTriggerIn()
    print("Q4023030Trigger - LightUpTriggerIn")
end

function Q4023030Trigger:TriggerOut()
    print("Q4023030Trigger - TriggerOut")
end

return Q4023030Trigger

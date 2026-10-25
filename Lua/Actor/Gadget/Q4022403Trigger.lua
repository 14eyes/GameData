require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022403Trigger = class("Q4022403Trigger", GadgetActorProxy)
Q4022403Trigger.defaultAlias = "Q4022403Trigger"
local Q40224ClientConfig = require("Quest/Client/Q40224ClientConfig")

local this
local subIDs = Q40224ClientConfig.SubIDs
local datas = Q40224ClientConfig.Datas
local npcs = Q40224ClientConfig.Npcs
local points = Q40224ClientConfig.Points

function Q4022403Trigger:OnPostDataPrepare()
    print("Q4022403Trigger - OnPostDataPrepare")
    this = self
end

function Q4022403Trigger:OnPostComponentPrepare()
    print("Q4022403Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40224)
end

function Q4022403Trigger:TriggerIn()
    print("Q4022403Trigger - TriggerIn")
    actorMgr:GetActor("40224"):PlayerEnterDungeonWithData(1777, 1285, 4022402, 1, datas.PlayerEnterDungeonData4022208, nil, nil)
    this:DestroySelf()
end

function Q4022403Trigger:PreTriggerIn()
    print("Q4022403Trigger - PreTriggerIn")
end

function Q4022403Trigger:LightUpTriggerIn()
    print("Q4022403Trigger - LightUpTriggerIn")
end

function Q4022403Trigger:TriggerOut()
    print("Q4022403Trigger - TriggerOut")
end

return Q4022403Trigger

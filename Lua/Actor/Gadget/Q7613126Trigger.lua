require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613126Trigger = class("Q7613126Trigger", GadgetActorProxy)
Q7613126Trigger.defaultAlias = "Q7613126Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613126Trigger:OnPostDataPrepare()
    print("Q7613126Trigger - OnPostDataPrepare")
    this = self
end

function Q7613126Trigger:OnPostComponentPrepare()
    print("Q7613126Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 30, 100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613126Trigger:TriggerIn()
    print("Q7613126Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613126})
    this:DestroySelf()
end

function Q7613126Trigger:PreTriggerIn()
    print("Q7613126Trigger - PreTriggerIn")
end

function Q7613126Trigger:LightUpTriggerIn()
    print("Q7613126Trigger - LightUpTriggerIn")
end

function Q7613126Trigger:TriggerOut()
    print("Q7613126Trigger - TriggerOut")
end

return Q7613126Trigger

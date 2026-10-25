require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q15023DungeonTarget02 = class("Q15023DungeonTarget02", GadgetActorProxy)
Q15023DungeonTarget02.defaultAlias = "Q15023DungeonTarget02"
local Q15023ClientConfig = require("Quest/Client/Q15023ClientConfig")

local this
local subIDs = Q15023ClientConfig.SubIDs
local npcs = Q15023ClientConfig.Npcs
local points = Q15023ClientConfig.Points

function Q15023DungeonTarget02:OnPostDataPrepare()
    print("Q15023DungeonTarget02 - OnPostDataPrepare")
    this = self
end

function Q15023DungeonTarget02:OnPostComponentPrepare()
    print("Q15023DungeonTarget02 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15023)
end

function Q15023DungeonTarget02:TriggerIn()
    print("Q15023DungeonTarget02 - TriggerIn")
    actorUtils.FinishQuestID(false, 1502311)
    this:DestroySelf()
end

function Q15023DungeonTarget02:PreTriggerIn()
    print("Q15023DungeonTarget02 - PreTriggerIn")
end

function Q15023DungeonTarget02:LightUpTriggerIn()
    print("Q15023DungeonTarget02 - LightUpTriggerIn")
end

function Q15023DungeonTarget02:TriggerOut()
    print("Q15023DungeonTarget02 - TriggerOut")
end

return Q15023DungeonTarget02

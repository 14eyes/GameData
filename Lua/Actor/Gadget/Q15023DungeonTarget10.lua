require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q15023DungeonTarget10 = class("Q15023DungeonTarget10", GadgetActorProxy)
Q15023DungeonTarget10.defaultAlias = "Q15023DungeonTarget10"
local Q15023ClientConfig = require("Quest/Client/Q15023ClientConfig")

local this
local subIDs = Q15023ClientConfig.SubIDs
local npcs = Q15023ClientConfig.Npcs
local points = Q15023ClientConfig.Points

function Q15023DungeonTarget10:OnPostDataPrepare()
    print("Q15023DungeonTarget10 - OnPostDataPrepare")
    this = self
end

function Q15023DungeonTarget10:OnPostComponentPrepare()
    print("Q15023DungeonTarget10 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15023)
end

function Q15023DungeonTarget10:TriggerIn()
    print("Q15023DungeonTarget10 - TriggerIn")
    actorUtils.FinishQuestID(false, 1502327)
    this:DestroySelf()
end

function Q15023DungeonTarget10:PreTriggerIn()
    print("Q15023DungeonTarget10 - PreTriggerIn")
end

function Q15023DungeonTarget10:LightUpTriggerIn()
    print("Q15023DungeonTarget10 - LightUpTriggerIn")
end

function Q15023DungeonTarget10:TriggerOut()
    print("Q15023DungeonTarget10 - TriggerOut")
end

return Q15023DungeonTarget10

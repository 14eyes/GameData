require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q15023DungeonShortCut2 = class("Q15023DungeonShortCut2", GadgetActorProxy)
Q15023DungeonShortCut2.defaultAlias = "Q15023DungeonShortCut2"
local Q15023ClientConfig = require("Quest/Client/Q15023ClientConfig")

local this
local subIDs = Q15023ClientConfig.SubIDs
local npcs = Q15023ClientConfig.Npcs
local points = Q15023ClientConfig.Points

function Q15023DungeonShortCut2:OnPostDataPrepare()
    print("Q15023DungeonShortCut2 - OnPostDataPrepare")
    this = self
end

function Q15023DungeonShortCut2:OnPostComponentPrepare()
    print("Q15023DungeonShortCut2 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15023)
end

function Q15023DungeonShortCut2:TriggerIn()
    print("Q15023DungeonShortCut2 - TriggerIn")
    actorMgr:GetActor("15023"):SetQuestVarByMainId(2, 2)
    this:DestroySelf()
end

function Q15023DungeonShortCut2:PreTriggerIn()
    print("Q15023DungeonShortCut2 - PreTriggerIn")
end

function Q15023DungeonShortCut2:LightUpTriggerIn()
    print("Q15023DungeonShortCut2 - LightUpTriggerIn")
end

function Q15023DungeonShortCut2:TriggerOut()
    print("Q15023DungeonShortCut2 - TriggerOut")
end

return Q15023DungeonShortCut2

require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40028Trigger4 = class("Q40028Trigger4", GadgetActorProxy)
Q40028Trigger4.defaultAlias = "Q40028Trigger4"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q40028Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40028Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40028Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40028"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("40028"):PlayCutsceneIndex("400280201", function(arg1)
            actorMgr:GetActor("40028"):FinishQuestID(false, 4002802)
        end, nil, nil, false)
    end)
end

function Q40028Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q40028Trigger4

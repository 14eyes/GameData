require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101905NPCtrigger = class("Q1101905NPCtrigger", GadgetActorProxy)
Q1101905NPCtrigger.defaultAlias = "Q1101905NPCtrigger"
local Q11019ClientConfig = require("Quest/Client/Q11019ClientConfig")

local this
local subIDs = Q11019ClientConfig.SubIDs
local npcs = Q11019ClientConfig.Npcs
local gadgets = Q11019ClientConfig.Gadgets
local datas = Q11019ClientConfig.Datas

function Q1101905NPCtrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1101905NPCtrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10.73643, 6.147881, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101905NPCtrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("11019")
    actor:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "", false, true)
    actor:CallDelay(0.5, function(arg1)
        local actor = actorMgr:GetActor("11019")
        actor:CreateQuestNpcById(1101905, npcs.Npc1048Data.id, 2)
        actor:RequestInteraction(npcs.Npc1048Data.alias)
    end)

    this:DestroySelf()
end

function Q1101905NPCtrigger:TriggerOut()
    print("TriggerOut")
end

return Q1101905NPCtrigger

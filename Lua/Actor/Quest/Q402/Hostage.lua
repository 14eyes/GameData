require("Actor/ActorCommon")
local SQ402 = require("Actor/Quest/SQ402")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Hostage = class("Hostage", NpcActorProxy)
Hostage.defaultAlias = "Hostage"
local Q402Config = require("Actor/Quest/Q402/Q402Config")

function Hostage:Escape()
    print("escape Hostage")
    self:RunToTask(Q402Config.Follow1Pos, function(arg1, arg2)
        local actor = actorMgr:GetActor(Q402Config.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end

        arg1:Destroy(false)
    end)
end

function Hostage:Rescue()
    print("rescue Hostage")
    self:DoFreeStyle(1)
end

function Hostage:Start()
    print("start!Hostage")
    self:SetPos(Q402Config.HostagePos)
    self:DoFreeStyle(3)
end

function Hostage:OnDestroy()
    print("wendy " .. self.configID .. " destroied")
end

return Hostage

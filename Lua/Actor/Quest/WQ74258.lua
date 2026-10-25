require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74258 = class("Quest74258", QuestActorProxy)
Quest74258.defaultAlias = "Quest74258"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest74258:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74258:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7425801"] = self.OnSubStart7425801,
        ["7425802"] = self.OnSubStart7425802,
        ["7425803"] = self.OnSubStart7425803
    }
end

function Quest74258:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7425801"] = self.OnSubFinish7425801,
        ["7425802"] = self.OnSubFinish7425802,
        ["7425803"] = self.OnSubFinish7425803
    }
end

function Quest74258:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7425802"] = self.OnSubFailed7425802, ["7425803"] = self.OnSubFailed7425803}
end

function Quest74258:Start()
    print("Start")
end

function Quest74258:OnDestroy()
    print("OnDestroy")
end

function Quest74258:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74258:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74258:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7425803N1076Trigger")
    this:ActorDestroy("Q7425801Trigger", 74258)
    this:SafeDestroyQuestNpc(npcs.Npc1076.alias, 3)
    this:LightNotifyTo(npcs.Npc5004.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5005.alias, 0, true)
    this:RemoveLocalGadget(73177010, "1")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177012, "4")
    this:RemoveLocalGadget(73177013, "6")
    this:RemoveLocalGadget(73177013, "5")
    this:RecycleAllRes()
end

function Quest74258:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7425801Trigger", 74258)
end

function Quest74258:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7425801 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7425802 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest74258:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest74258:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest74258:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest74258:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74258:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 3595.751, y = 510.183, z = 4655.067}, 20, 73177007, 10000133, 7425802) then
        actorUtils.FinishQuestWithParam({false}, {7425802})
    else
        if this:GetSubQuestState(7425802) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest74258:OnSubStart7425801(arg1)
    print("OnSubStart7425801")
    this:NotifyTo(npcs.Npc5004.alias, 1, true)
    this:NotifyTo(npcs.Npc5005.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7425801Trigger", "Actor/Gadget/Q7425801Trigger", 70900002, 0, points.Q7425801Trigger.pos, points.Q7425801Trigger.rot, true, false, 3, nil, 0, 74258)
end

function Quest74258:OnSubFinish7425801(arg1)
    print("OnSubFinish7425801")
end

function Quest74258:OnSubStart7425802(arg1)
    print("OnSubStart7425802")
    this:NotifyTo(npcs.Npc5004.alias, 1, true)
    this:NotifyTo(npcs.Npc5005.alias, 1, true)
    this:RepeatSitCheck()
end

function Quest74258:OnSubFinish7425802(arg1)
    print("OnSubFinish7425802")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74258:OnSubFailed7425802(arg1)
    print("OnSubFailed7425802")
    this:RecycleAllRes()
end

function Quest74258:OnSubStart7425803(arg1)
    print("OnSubStart7425803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7425803, 0, 25, 0.5, npcs.Npc1076.id)
    this:NotifyTo(npcs.Npc5004.alias, 1, true)
    this:NotifyTo(npcs.Npc5005.alias, 1, true)
    this:CreateLocalGadget(73177010, "1", {x = 3595.804, y = 510.183, z = 4656.956}, {x = 0, y = 139.781, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 3596.263, y = 510.183, z = 4655.908}, {x = 0, y = 336.309, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "3", {x = 3595.414, y = 510.183, z = 4657.886}, {x = 0, y = 156.309, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "4", {x = 3595.445, y = 510.961, z = 4656.917}, {x = 0, y = 1.641, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "6", {x = 3595.543, y = 510.961, z = 4657.315}, {x = 0, y = 215.774, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "5", {x = 3596.07, y = 510.961, z = 4656.636}, {x = 0, y = 33.48, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest74258:OnSubFinish7425803(arg1)
    print("OnSubFinish7425803")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1076.alias)
        this:LightNotifyTo(npcs.Npc5004.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5005.alias, 0, true)
        this:RecycleAllRes()
    end)
end

function Quest74258:OnSubFailed7425803(arg1)
    print("OnSubFailed7425803")
    this:RecycleAllRes()
end

return Quest74258

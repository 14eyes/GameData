require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75238 = class("Quest75238", QuestActorProxy)
Quest75238.defaultAlias = "Quest75238"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75238:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75238:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7523801"] = self.OnSubStart7523801,
        ["7523802"] = self.OnSubStart7523802,
        ["7523803"] = self.OnSubStart7523803,
        ["7523804"] = self.OnSubStart7523804
    }
end

function Quest75238:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7523801"] = self.OnSubFinish7523801,
        ["7523802"] = self.OnSubFinish7523802,
        ["7523803"] = self.OnSubFinish7523803,
        ["7523804"] = self.OnSubFinish7523804
    }
end

function Quest75238:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7523802"] = self.OnSubFailed7523802, ["7523803"] = self.OnSubFailed7523803}
end

function Quest75238:Start()
    print("Start")
end

function Quest75238:OnDestroy()
    print("OnDestroy")
end

function Quest75238:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75238:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75238:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7523803N2627Trigger")
    this:ActorDestroy("Q7523801Trigger", 75238)
    this:SafeDestroyQuestNpc(npcs.Npc2627.alias, 3)
    this:RemoveLocalGadget(73177013, "8")
    this:RemoveLocalGadget(73177013, "9")
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177010, "1")
    this:RemoveLocalGadget(73177012, "10")
    this:RecycleAllRes()
end

function Quest75238:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7523801Trigger", 75238)
end

function Quest75238:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7523801 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7523802 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest75238:ActorDestroy(arg1, arg2)
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

function Quest75238:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest75238:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75238:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75238:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = -1993.5, y = 173.21, z = 9630.9}, 30, 73177007, 10000133, 7523802) then
        actorUtils.FinishQuestWithParam({false}, {7523802})
    else
        if this:GetSubQuestState(7523802) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest75238:OnSubStart7523801(arg1)
    print("OnSubStart7523801")
    actorMgr:CreateActorWithPos("Q7523801Trigger", "Actor/Gadget/Q7523801Trigger", 70900002, 0, points.Q7523801Trigger.pos, points.Q7523801Trigger.rot, true, false, 3, nil, 0, 75238)
end

function Quest75238:OnSubFinish7523801(arg1)
    print("OnSubFinish7523801")
end

function Quest75238:OnSubStart7523802(arg1)
    print("OnSubStart7523802")
    this:RepeatSitCheck()
end

function Quest75238:OnSubFinish7523802(arg1)
    print("OnSubFinish7523802")
end

function Quest75238:OnSubFailed7523802(arg1)
    print("OnSubFailed7523802")
    this:RecycleAllRes()
end

function Quest75238:OnSubStart7523803(arg1)
    print("OnSubStart7523803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523803, 0, 40, 0.5, npcs.Npc2627.id)
end

function Quest75238:OnSubFinish7523803(arg1)
    print("OnSubFinish7523803")
    this:NpcDestroyImmediately(3, npcs.Npc2627.alias)
end

function Quest75238:OnSubFailed7523803(arg1)
    print("OnSubFailed7523803")
    this:RecycleAllRes()
end

function Quest75238:OnSubStart7523804(arg1)
    print("OnSubStart7523804")
    this:CreateQuestNpc(arg1, npcs.Npc2627.id, 0, false, 0)
    this:CreateLocalGadget(73177013, "8", {x = -2005.211, y = 177.598, z = 9635.545}, {x = 0, y = 139.656, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "9", {x = -2004.668, y = 177.598, z = 9634.894}, {x = 0, y = 318.014, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "3", {x = -2005.648, y = 176.821, z = 9636.086}, {x = 0, y = 139.878, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = -2004.249, y = 176.821, z = 9634.354}, {x = 0, y = 318.267, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177010, "1", {x = -2004.944, y = 176.821, z = 9635.206}, {x = 0, y = 320.508, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "10", {x = -2005.04, y = 177.598, z = 9635.119}, {x = 0, y = 280.89, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest75238:OnSubFinish7523804(arg1)
    print("OnSubFinish7523804")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc2627.alias)
        this:RecycleAllRes()
    end)
end

return Quest75238
